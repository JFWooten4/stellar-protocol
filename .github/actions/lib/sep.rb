# frozen_string_literal: true

require "base64"
require "uri"

class SepPullRequest
  NEW_SEP_MARKER = "<!-- new-sep-proposal-guidance -->"
  MODIFICATION_MARKER = "<!-- sep-modification-guidance -->"
  BOT_LOGIN = "github-actions[bot]"

  attr_reader :number

  def initialize(github:, repository:, number:, node_id:, author:, base_sha:, default_branch:, draft:)
    @github = github
    @owner, @repo = repository.split("/", 2)
    @number = Integer(number)
    @node_id = node_id
    @author = author
    @base_sha = base_sha
    @default_branch = default_branch
    @draft = draft
  end

  def changed_files
    @changed_files ||= @github.paginate("/repos/#{@owner}/#{@repo}/pulls/#{@number}/files")
  end

  def new_sep_files
    changed_files.select do |file|
      file["status"] == "added" &&
        file["filename"].start_with?("ecosystem/") &&
        file["filename"].end_with?(".md") &&
        file["filename"] != "ecosystem/README.md"
    end
  end

  def modified_sep_files
    changed_files.select do |file|
      file["status"] == "modified" && /^ecosystem\/sep-\d{4}\.md$/.match?(file["filename"])
    end
  end

  def guidance_posted?(marker)
    comments.any? do |comment|
      comment.dig("user", "login") == BOT_LOGIN && comment["body"]&.include?(marker)
    end
  end

  def convert_to_draft
    return puts("PR ##{@number} is already a draft; skipping draft conversion.") if @draft

    @github.graphql(
      query: <<~GRAPHQL,
        mutation($pullRequestId: ID!) {
          convertPullRequestToDraft(input: { pullRequestId: $pullRequestId }) {
            pullRequest { isDraft }
          }
        }
      GRAPHQL
      variables: { pullRequestId: @node_id }
    )
    @draft = true
    puts "Converted PR ##{@number} to a draft."
  end

  def lock
    @github.put(
      "/repos/#{@owner}/#{@repo}/issues/#{@number}/lock",
      body: { lock_reason: "resolved" }
    )
    puts "Locked PR ##{@number}."
  end

  def comment(body)
    @github.post(
      "/repos/#{@owner}/#{@repo}/issues/#{@number}/comments",
      body: { body: body }
    )
  end

  def sep_info(filename)
    content = file_at_base(filename)
    author_line = content.match(/^Authors?:(.*)$/)&.[](1).to_s
    discussion_line = content.match(/^Discussion:(.*)$/)&.[](1).to_s

    {
      filename: filename,
      handles: extract_handles(author_line),
      discussion: extract_discussion(discussion_line)
    }
  end

  def readme_url
    "https://github.com/#{@owner}/#{@repo}/blob/#{@default_branch}/ecosystem/README.md"
  end

  def file_url(filename)
    "https://github.com/#{@owner}/#{@repo}/blob/#{@default_branch}/#{filename}"
  end

  private

  def comments
    @comments ||= @github.paginate("/repos/#{@owner}/#{@repo}/issues/#{@number}/comments")
  end

  def file_at_base(filename)
    escaped_path = filename.split("/").map { |segment| URI.encode_www_form_component(segment) }.join("/")
    response = @github.get(
      "/repos/#{@owner}/#{@repo}/contents/#{escaped_path}?ref=#{URI.encode_www_form_component(@base_sha)}"
    )
    Base64.decode64(response.fetch("content"))
  end

  def extract_handles(author_line)
    handles = author_line.scan(/(?:^|[\s<(,])@([^\s<>(),]+)/).flatten
    handles
      .select { |handle| /^[A-Za-z0-9][A-Za-z0-9-]{0,38}$/.match?(handle) }
      .reject { |handle| handle.casecmp?(@author) }
      .uniq
  end

  def extract_discussion(discussion_line)
    urls = discussion_line.scan(%r{https?://[^\s,\])]+})
    urls.find { |url| url.start_with?("https://github.com/") } || urls.first
  end
end
