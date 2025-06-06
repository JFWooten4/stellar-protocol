# Stellar Ecosystem Proposals (SEPs)

## SEP Tracks

- **Informational** — A SEP on the `Informational` track is one that is open to
  adoption by the ecosystem, but has not been formally standardized by SDF, and
  is not endorsed by SDF for adoption. Typically a SEP can start as
  `Informational` to gain traction within the ecosystem before moving to the
  `Standards` track.
- **Standard** — A SEP on the `Standards` track is one that aims for formal
  standardization and endorsement by SDF for adoption. Typically a SEP Standard
  has a higher bar towards acceptance, and it requires approval by 2 SDF
  members of the SEP Team.

## SEP Status Terms

- **Draft** - A SEP that is currently open for consideration and actively being
  discussed.
- **Awaiting Decision** — A mature and ready SEP that is ready for approval by
  the SEP Team. If enough the approval requirements are met by SEP team
  members, the SEP will move towards `FCP`. Otherwise, it'll regress to a
  `Draft`.
- **FCP** — A SEP that has entered a Final Comment Period (FCP). After one week
  has passed, during which any new concerns should be addressed, the SEP's
  status will become `Active`.
- **Active** - An actively maintained SEP that is intended for immediate
  adoption by the entire ecosystem. Additional updates may be made without
  changing the SEP number.
- **Final** - A finalized SEP will not be changed aside from minor errata. For
  a proposal to be a candidate to be made Final it must be being used in live
  products.

### Additional Statuses

- **Deprecated** - A SEP that was previously on an active track but has been
  deprecated and is no longer suggested for use. There may be legacy usage of a
  deprecated SEP.
- **Rejected** - A Standards SEP that has been formally rejected by the SEP
  Team, and will not be implemented.
- **Superseded: [New Final SEP]** - A SEP that which was previously final but
  has been superseded by a new, final SEP. Both SEPs should reference each
  other.

## List of Proposals

| Number                  | Title                                                                  | Author                                                        | Track    | Status                                                            |
| ----------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------- | -------- | ----------------------------------------------------------------- |
| [SEP-0001](sep-0001.md) | Stellar Info File                                                      | SDF                                                           | Standard | Active                                                            |
| [SEP-0002](sep-0002.md) | Federation Protocol                                                    | SDF                                                           | Standard | Final                                                             |
| [SEP-0004](sep-0004.md) | Tx Status Endpoint                                                     | SDF                                                           | Standard | Final                                                             |
| [SEP-0005](sep-0005.md) | Key Derivation Methods for Stellar Accounts                            | SDF                                                           | Standard | Final                                                             |
| [SEP-0006](sep-0006.md) | Deposit and Withdrawal API                                             | SDF                                                           | Standard | Active (Interactive components are deprecated in favor of SEP-24) |
| [SEP-0007](sep-0007.md) | URI Scheme to facilitate delegated signing                             | Interstellar                                                  | Standard | Final                                                             |
| [SEP-0008](sep-0008.md) | Regulated Assets                                                       | Interstellar                                                  | Standard | Final                                                             |
| [SEP-0009](sep-0009.md) | Standard KYC Fields                                                    | SDF                                                           | Standard | Active                                                            |
| [SEP-0010](sep-0010.md) | Stellar Authentication                                                 | Sergey Nebolsin, Tom Quisel                                   | Standard | Active                                                            |
| [SEP-0011](sep-0011.md) | Txrep: Human-Readable Low-Level Representation of Stellar Transactions | David Mazières                                                | Standard | Active                                                            |
| [SEP-0012](sep-0012.md) | KYC API                                                                | Interstellar                                                  | Standard | Active                                                            |
| [SEP-0014](sep-0014.md) | Dynamic Asset Metadata                                                 | OrbitLens, Paul Tiplady                                       | Standard | Draft                                                             |
| [SEP-0018](sep-0018.md) | Data Entry Namespaces                                                  | Mister.Ticot                                                  | Standard | Active                                                            |
| [SEP-0020](sep-0020.md) | Self-verification of validator nodes                                   | Johan Stén                                                    | Standard | Active                                                            |
| [SEP-0023](sep-0023.md) | Muxed Account Strkeys                                                  | David Mazières, Tomer Weller, Leigh McCulloch, Alfonso Acosta | Standard | Active                                                            |
| [SEP-0024](sep-0024.md) | Hosted Deposit and Withdrawal                                          | SDF                                                           | Standard | Active                                                            |
| [SEP-0028](sep-0028.md) | XDR Base64 Encoding                                                    | SDF                                                           | Standard | Final                                                             |
| [SEP-0029](sep-0029.md) | Account Memo Requirements                                              | OrbitLens, Tomer Weller, Leigh McCulloch, David Mazières      | Standard | Active                                                            |
| [SEP-0031](sep-0031.md) | Cross-Border Payments API                                              | SDF                                                           | Standard | Active                                                            |
| [SEP-0033](sep-0033.md) | Identicons for Stellar Accounts                                        | Lobstr.co, Gleb Pitsevich                                     | Standard | Active                                                            |
| [SEP-0046](sep-0046.md) | Contract Meta                                                          | Leigh McCulloch                                               | Standard | Active                                                            |
| [SEP-0048](sep-0048.md) | Contract Interface Specification                                       | Leigh McCulloch                                               | Standard | Active                                                            |

### Draft Proposals

| Number                  | Title                                                          | Author                                        | Track         | Status               |
| ----------------------- | -------------------------------------------------------------- | --------------------------------------------- | ------------- | -------------------- |
| [SEP-0015](sep-0015.md) | Attachment Convention                                          | Interstellar                                  | Standard      | Draft                |
| [SEP-0016](sep-0016.md) | Account Transfer Permissionless Payment Protocol (@p2p)        | Jeremy Rubin                                  | Standard      | Draft                |
| [SEP-0017](sep-0017.md) | Issuer account funding protocol (CAP-13 Based)                 | Tom Quisel                                    | Standard      | Draft                |
| [SEP-0019](sep-0019.md) | Bootstrapping Multisig Transaction Submission                  | Paul Selden, Nikhil Saraf                     | Standard      | Draft                |
| [SEP-0021](sep-0021.md) | On-chain signature & transaction sharing                       | Mister.Ticot                                  | Informational | Draft                |
| [SEP-0022](sep-0022.md) | IPFS Support                                                   | Samuel B. Sendelbach                          | Informational | Draft                |
| [SEP-0030](sep-0030.md) | Recoverysigner: multi-party key management of Stellar accounts | Leigh McCulloch, Lindsay Lin                  | Standard      | Draft                |
| [SEP-0032](sep-0032.md) | Asset Address                                                  | Leigh McCulloch                               | Standard      | Draft                |
| [SEP-0034](sep-0034.md) | Wallet Attribution for Anchors                                 | Jake Urban and Leigh McCulloch                | Standard      | Final Comment Period |
| [SEP-0035](sep-0035.md) | Operation IDs                                                  | Isaiah Turner, Debnil Sur, Scott Fleckenstein | Standard      | Draft                |
| [SEP-0037](sep-0037.md) | Address Directory API                                          | OrbitLens                                     | Informational | Draft                |
| [SEP-0038](sep-0038.md) | Anchor RFQ API                                                 | Jake Urban and Leigh McCulloch                | Standard      | Draft                |
| [SEP-0039](sep-0039.md) | Interoperability Recommendations for NFTs                      | SDF, Litemint.io                              | Informational | Active               |
| [SEP-0040](sep-0040.md) | Oracle Consumer Interface                                      | Alex Mootz, OrbitLens, Markus Paulson-Luna    | Standard      | Draft                |
| [SEP-0041](sep-0041.md) | Soroban Token Interface                                        | Jonathan Jove, Siddharth Suresh               | Standard      | Draft                |
| [SEP-0045](sep-0045.md) | Stellar Web Authentication for Contract Accounts               | Philip Liu, Marcelo Salloum, Leigh McCulloch  | Standard      | Draft                |
| [SEP-0047](sep-0047.md) | Standard Interface Discovery                                   | Leigh McCulloch                               | Standard      | Draft                |
| [SEP-0049](sep-0049.md) | Upgradeable Contracts                                          | OpenZeppelin, Boyan Barakov, Özgün Özerk      | Standard      | Draft                |
| [SEP-0050](sep-0050.md) | Non-Fungible Tokens                                            | OpenZeppelin, Boyan Barakov, Özgün Özerk      | Standard      | Draft                |
| [SEP-0051](sep-0051.md) | XDR-JSON                                                       | Leigh McCulloch                               | Standard      | Draft                |
| [SEP-0052](sep-0052.md) | Key Sharing Method for Stellar Keys                            | Pamphile Roy, Jun Luo                         | Standard      | Draft                |

### Rejected and Deprecated Proposals

| Number                  | Title                                        | Author                                                   | Track         | Status     |
| ----------------------- | -------------------------------------------- | -------------------------------------------------------- | ------------- | ---------- |
| [SEP-0003](sep-0003.md) | Compliance Protocol                          | SDF                                                      | Standard      | Deprecated |
| [SEP-0013](sep-0013.md) | DEPOSIT_SERVER proposal                      | @no, @ant, @manran, @pacngfar                            | Informational | Rejected   |
| [SEP-0026](sep-0026.md) | Non-interactive Anchor/Wallet Asset Transfer | SDF, Fritz Ekwoge (@efritze), Ernest Mbenkum (@cameroon) | Standard      | Rejected   |

# Contribution Process

The Stellar Ecosystem, like most software ecosystems in the world, continues to
evolve over time to meet the needs of our network's participants and to drive
technology forward into new territory.

Unlike Stellar's Core development (CAPs), Stellar's Ecosystem Proposals are
intended to be a more dynamic way of introducing standards and protocols
utilized in the ecosystem that are built on top of the Stellar Network. It
attempts to take a more lightweight process for approval, and much of its
process is inspired by the [IETF][ietf].

Before contributing, consider the following:

- Choose a track to propose your idea on. The bar for accepting an
  `Informational` SEP is much lower than one for a `Standard`, and allows you
  to promote the SEP independently to gain feedback and traction before
  creating a Standard out of it.
- Gather feedback from discussion on the [GitHub discussion forum], [Stellar
  Dev Discord], or [sellar-dev mailing list], and utilize it to begin a draft
  proposal.
- Follow the proposal process listed below. If you're having difficulty moving
  the proposal forward, talk to the buddy that's assigned the SEP; they'll
  often have guidance on how to move things forward, as well as feedback
  regarding feasibility and how the proposal does or does not align with the
  Stellar Network's goals.

## SEP Process

### Pre-SEP (Initial Discussion)

Introduce your idea on the [GitHub discussion forum], [Stellar Dev Discord], or
[sellar-dev mailing list] and other community forums dedicated to Stellar.

- Make sure to gather feedback and alternative ideas — it's useful before
  putting together a formal draft!
- Consider contacting experts in a particular area for feedback while you're
  hashing out the details.

### Creating a SEP Draft

Draft a formal proposal using the [SEP Template](../sep-template.md), and
submit a PR to this repository. You should make sure to adhere to the
following:

- Use the following format for the filename of your draft:
  `sep_{shorttitle}.md`, for example `sep_newaccountdeposit.md`
- Make sure to place your SEP in the `ecosystem/` folder.
- Include GitHub handles or emails for all authors listed. GitHub handles are
  preferred.
- Set the version to `v0.0.1`.

Finally, submit a PR of your draft via your fork of this repository.

#### Additional Tips

- If your SEP requires images or other supporting files, they should be
  included in a subdirectory of the `contents` folder for that SEP, such as
  `contents/sep_happycoder_b274f73c/`. Links should be relative, for example a
  link to an image from SEP-X would be
  `../contents/sep_happycoder_b274f73c/image.png`.

### Draft: Merging & Further Iteration

From there, the following process will happen:

- A SEP buddy is assigned and will merge your PR if you properly followed the
  steps above.
  - They'll rename the above files to the latest SEP draft number before
    merging in the PR.
  - They'll provide initial feedback, and help pull in any subject matter
    experts that will help in pushing the SEP towards a final disposition.
- You should continue the discussion of the draft SEP on the [GitHub discussion
  forum], [Stellar Dev Discord], or [sellar-dev mailing list] to gather
  additional feedback. We welcome any additional PRs that iterate on the draft.
- Keep the version of the SEP as a v0 version while in draft.
- Increment the minor or patch versions on each change while in draft. See [SEP
  Versioning].

### Draft -> Awaiting Decision -> Final Comment Period (FCP)

- When you're ready, you should submit a PR changing the status in the draft to
  `Awaiting Decision`.
- A SEP buddy is assigned from the SEP team. They'll provide any additional
  feedback, and help pull in any subject matter experts and SEP team members
  that will help in pushing the SEP towards a final disposition.
  - For the Informational Track, the SEP enters FCP when 2 members of the SEP
    Team approve the pull request.
  - For the Standards Track, the SEP enters FCP when 3 members of the SEP team
    approve the pull request, 2 of whom must be representatives of SDF.
  - The SEP buddy (the PR assignee) is responsible for including members of the
    SEP team who are subject experts on the SEP being discussed; however, you
    are free to pull in feedback without going through your buddy. The SEP
    buddy may also bring it up at an upcoming protocol meeting.
  - If any SEP has major concerns (typically around security) from a SEP Team
    or CAP Core Team member, the concerns must be addressed before moving it
    forward; otherwise, it will be set back to `Draft`, or if fundamentally
    broken, to `Rejected`.
  - It should take no more than 2 weeks to move a SEP out of
    `Awaiting Decision`.
- Once a SEP has been approved, it goes into FCP which is broadcast to the
  protocol meeting members along with the mailing list.

### FCP -> Active

- If no major concerns are brought up, the SEP is marked as `Active` and
  updated to version `v1.0.0` by your SEP buddy.
- Ideally there will be a reference implementation exhibiting the behavior and
  value of the SEP before moving to active state.
- Active SEPs should be brought into production by ecosystem members.
- Increment the major, minor, or patch versions on each change. See [SEP
  Versioning].
- Patch changes may be made to address bugs, errors, clarifications, or to fix
  errata.
- Minor changes may be made as more implementations are brought online
  highlighting any edge cases.
- Major changes, and breaking changes, should be considered with care as they
  may reduce interoperability.

### Active -> Final

- Once the SEP team determines that an active SEP is complete, proven, and
  won't be extended, the SEP can move to `Final` status.
- This promotion can only occur once there are multiple live implementations
  being used in production to ensure any edge cases or incompatibilities are
  found.
- No changes will be made to a finalized SEP aside from fixing errata.
- Changes should increment the patch version number only.
- Much consideration should be given before moving to Final status, it is OK
  for SEPs to live in Active status for a long time.

### Regression

- It is possible for a SEP to move from `Active` to `Draft` or `Deprecated` if
  it is never adopted, or is abandoned by the community.
- Regression of an active SEP occurs via the same process as a proposal
  (`Draft` -> `Awaiting Decision` -> `FCP` -> `Deprecated`)

## SEP Versioning

Unlike CAPs, SEPs are assigned versions because they are dynamic and change
over time. SEPs use [semantic versioning] in the form `vMAJOR.MINOR.PATCH` to
determine an appropriate version for each change.

During draft a SEP should have a major version of `0` to indicate that anything
in the SEP may change at anytime. Once a SEP moves to Active it should be
changed to `v1.0.0` and the rules of semantic versioning apply.

All changes to a SEP should be accompanied by an update to its version, no
matter how small even typographical corrections. The exceptions that do not
require version updates:

- Correcting metadata in the `Pragma` section.
- Updating broken links.
- Updating links to implementations.

[GitHub discussion forum]:
  https://github.com/orgs/stellar/discussions/categories/stellar-ecosystem-proposals
[Stellar Dev Discord]: https://discord.gg/stellardev
[stellar-dev mailing list]: https://groups.google.com/g/stellar-dev
[ietf]: https://ietf.org/
[semantic versioning]: https://semver.org/
[SEP Versioning]: #sep-versioning
