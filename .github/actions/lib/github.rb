# frozen_string_literal: true

require "json"
require "net/http"
require "uri"

class GitHub
  API_ROOT = "https://api.github.com"
  API_VERSION = "2022-11-28"

  def initialize(token: ENV.fetch("GITHUB_TOKEN"))
    @token = token
  end

  def get(path)
    request(Net::HTTP::Get, path)
  end

  def post(path, body:)
    request(Net::HTTP::Post, path, body: body)
  end

  def put(path, body: nil)
    request(Net::HTTP::Put, path, body: body)
  end

  def paginate(path)
    results = []
    page = 1

    loop do
      separator = path.include?("?") ? "&" : "?"
      batch = get("#{path}#{separator}per_page=100&page=#{page}")
      raise "Expected an array from paginated GitHub endpoint #{path}" unless batch.is_a?(Array)

      results.concat(batch)
      break if batch.length < 100

      page += 1
    end

    results
  end

  def graphql(query:, variables: {})
    response = post("/graphql", body: { query: query, variables: variables })
    errors = response["errors"]
    raise "GitHub GraphQL error: #{errors.map { |error| error["message"] }.join("; ")}" if errors&.any?

    response.fetch("data")
  end

  private

  def request(request_class, path, body: nil)
    uri = URI("#{API_ROOT}#{path}")
    request = request_class.new(uri)
    request["Accept"] = "application/vnd.github+json"
    request["Authorization"] = "Bearer #{@token}"
    request["X-GitHub-Api-Version"] = API_VERSION
    request["User-Agent"] = "stellar-protocol-sep-bot"
    request["Content-Type"] = "application/json" if body
    request.body = JSON.generate(body) if body

    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      http.open_timeout = 10
      http.read_timeout = 20
      http.request(request)
    end

    unless response.code.to_i.between?(200, 299)
      raise "GitHub API #{request.method} #{path} failed (#{response.code}): #{response.body}"
    end

    return {} if response.body.nil? || response.body.empty?

    JSON.parse(response.body)
  end
end
