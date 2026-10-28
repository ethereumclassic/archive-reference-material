# `etclabscore/core-geth`

The record of `https://github.com/etclabscore/core-geth` in this archive, oldest first. Its folder
at `main`'s tip is `etclabscore/core-geth/`.

# The preceding repository's client — vendored 2026-09-21

**One repository, whole, with history, frozen at a repository boundary rather than at an upstream's
death.** This upstream is alive and still committing. What ended at this ref is not the repository;
it is that repository's run as this chain's canonical client line.

`ethereumclassic/core-geth` was created on 2024-12-21 from `etclabscore/core-geth` at commit
`7ef3ecd7a` (2024-12-16), and has carried Ethereum Classic's Core-Geth since; that commit is
preserved upstream on the `archive-etclabscore-2024-12` branch and tagged
`archive/etclabscore-2024-12`. **Both repositories have committed independently from that commit
ever since**, so the preceding upstream will never again show this state except as one commit deep
inside a history that diverged from the line this archive tracks. That is what this copy holds, and
it is why the entry exists despite the upstream being in no danger.

**The boundary is enforced at the object level, not by naming a ref.** A vendoring can claim a
freeze point and still drag later history in through a branch fetch, and nothing about the working
tree would show it. This one does not: the commit of every release tag published on that upstream
after the boundary is unresolvable in this repository:

```sh
git cat-file -t 96b2afc25   # want: fatal: Not a valid object name
git cat-file -t 7ef3ecd7a   # want: commit  <- the control
```

**The negative result means something only because the positive control resolves.** Checked
2026-09-21 against every tag the upstream publishes: all 47 whose commits are ancestors of the
boundary resolve here, and none of the 7 whose commits are not, `v1.12.21`, `v1.12.22` and
`v1.12.23` among them. Nor does the upstream's current `master`.

## `etclabscore/core-geth/`

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/core-geth` |
| ref | `master` @ `7ef3ecd7a716354589c2f27ff8f4b74d7a5edf2e` |
| upstream date | 2024-12-16 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 19,476 commits |
| contents | 2,194 files · 70 MiB |
| license | see NOTICE |
| tree | `29bf8ae0e7b759e68f6af107647f6ffcfcb27015` |

The client that carried this chain after multi-geth, and the fourth link in the lineage above. Its
Ethereum Classic support was measured rather than assumed: 30 files match `ethereum.?classic`,
`ETCFork` or `ClassicChainConfig` at this ref, against an `ethash` control matching 302.

**This ref is NOT a release, and the tree says so.** `params/version.go` reads `1.12.21-unstable`,
six months of development past `v1.12.20` (2024-06-10), which is the last release this history
contains. The upstream tags `v1.12.21`, `v1.12.22` and `v1.12.23` all postdate the boundary and none
of them is reachable here. Do not read the vendored tree as any published version, and do not cite a
version number off it.

**Shares root commit `5db3335dc` with `multi-geth/multi-geth`, and here that IS shared lineage**:
the multi-geth entry above already records the two as one client line under two names, so the
standard independence check reports a shared root and is right to. Classic Geth,
`ethereumproject/go-ethereum`, carries the same root, as every go-ethereum descendant does.
A second shared root, `68ccbefc9`, is NOT lineage at all: it is the early JavaScript library's
first commit, `init` by `obscuren` on 2014-09-30, whose tree holds three files, `.gitignore`,
`ethereum.js` and `index.html`, merged into go-ethereum's history. A shared root is evidence of a
shared repository ancestor and nothing more; check what the root contains before drawing a
lineage from it.

Three mode-160000 gitlinks live inside this tree (`tests/testdata`, `tests/testdata-etc` and
`tests/evm-benchmarks`), mapped in the root `.gitmodules`, because one unmapped gitlink fails
`git submodule status` for the whole repository rather than for that path alone. `tests/testdata-etc`
pins `06ec708ea7`, **the same ref this archive vendors whole at `etclabscore/tests`**, so the client
and the suite it was tested against are both held here at the ref that pairs them.

### Why the boundary is here: who funded the work, and until when

**This commit is a stewardship boundary, and the funding organization's own published record is
what dates it.** Recorded because the archive's usual test (what disappears if the upstream
vanishes) does not by itself explain why *this* commit is the freeze point.

**The ETC Cooperative funded Core-Geth development from January 2022.** Announced 2021-12-22:
*"Starting in January 2022, development work on the Core-Geth client will be funded by the ETC
Cooperative."* Isaac Ardis and Christos Ziogas signed independent contractor agreements and
continued under the ETC Core banner; Diego López León joined that team. The Cooperative funded the
work; the developers were contractors, so read "funded" rather than "employed."
<https://etccooperative.org/posts/2021-12-22-coop-now-funding-core-geth>

**That same post corroborates the client lineage this archive is ordered by, from the maintaining
team's side rather than from the repositories:** *"The ETC Core team was initially formed as ETC
Labs Core in December 2018 with many of its developers having previously been part of the ETCDEV
team which supported the Classic Geth client. As Classic Geth was retired they supported the
Multi-Geth client prior to the birth of Core-Geth in 2020."* Classic Geth, then multi-geth, then
Core-Geth, stated by the people who carried it, and matching the order of the lineage above.

**The funded era ended as the organization moved to maintenance mode, across three published
documents around this commit.**

- **2024-12-05**, eleven days before the boundary commit: the executive director's departure
  announcement, describing the client work in progress: *"After the Prophasis (v1.12.20) release,
  there has been several months of work underway to do the first merge after this removal … that
  newer version is still pending release. The core developers will be assessing possible
  alternative strategies for client software moving forward, with fresh eyes on Besu, Erigon and
  Nethermind."* <https://etccooperative.org/posts/2024-12-05-q2-q3-reports>

  **This independently confirms what the vendored tree measures.** Its last release is `v1.12.20`
  and `params/version.go` reads `1.12.21-unstable`, the "pending release" the post describes,
  still pending at the boundary eleven days later.

- **2024 Retrospective, printed page 25 of 29:** *"Without any way to obtain funding, the ETC Coop
  will be in maintenance mode, with spending minimized, until the funding runs out. At that time,
  it will be up to other stakeholders to take on any required maintenance of the ETC client, unless
  a new plan materializes."*
  <https://etccooperative.org/etc-cooperative-retrospective-2024.pdf>

- **Q1 2025 report, printed page 13 of 17:** *"Due to significant changes in the organization, we
  are no longer comparing actual expenditures to a budget or previous years. This is because we are
  now in maintenance mode and spending has decreased significantly."*
  <https://etccooperative.org/etc-cooperative-q1-2025-en.pdf>

So the vendored range covers the funded era end to end (January 2022 to this commit, plus the
history the client carried into it), and `ethereumclassic/core-geth`, created five days later, is
where the proposal above was carried out and where "other stakeholders … take on any required
maintenance" actually happened.

**The move is proposed in the retrospective itself, and it is IMAGE content, invisible to every
text tool.** PDF page 24 (which prints "Page 18 of 29") carries a photograph of Donald McIntyre,
the Cooperative's Senior Editor, giving a talk titled "Ethereum Classic Roadmap" at the BITMAIN
World Digital Mining Summit in Muscat, Oman, 28-29 March 2024. The slide on screen behind him is
headed **"ETC Pathway Proposed by Donald McIntyre"**, and its second bullet reads:

> Move Core Geth to the Ethereum Classic community repository

**That is this boundary, proposed nine months before the commit and published by the funding
organization in its own retrospective.** The other four bullets are "Cancel MESS", backward
compatibility for the account and EVM versioning system, a supply-audit tool, and an 8 million gas
block size.

**Do not try to verify that quotation with `pdftotext`, and do not trust a text sweep that says it
is absent.** A full-text sweep of all 29 pages returns **0** matches for `ethereumclassic` and 0 for
any handoff phrasing, against controls that fire normally: `client` 9, `Core-Geth` 6, `Diego` 1.
The load-bearing sentence is pixels in a conference photo, so every text instrument reports it
missing, confidently, with a working control attached. This archive's own rule is that an absence
claim needs a corpus rather than one instrument; here one instrument covered every page and still
could not see the sentence. Render the page instead:

```sh
pdfimages -f 24 -l 24 -png etc-cooperative-retrospective-2024.pdf p24   # then open p24-000.png
```

The Cooperative's *prose* still never names `ethereumclassic/core-geth`, and no post of theirs
between 2024-10 and 2025-12 announces the transition as completed. So these sources establish the
funding era and the stated intent; the repository boundary as executed is documented by
`ethereumclassic/core-geth`'s own README and its signed `archive/etclabscore-2024-12` tag.

**Verifying the two PDF quotations: cite the printed footer, not the PDF page index.** They differ.
In the retrospective, printed page 25 is PDF page 25, but printed page 24 is PDF page **23**; PDF
page 24 prints "Page 18 of 29", one page sitting out of order. `file` also reports both documents
as 8 pages; `pdfinfo` reports 29 and 17, and is right.

**Frozen at `7ef3ecd7a`. Prove it by tree hash, never by diff:**

```sh
git rev-parse '7ef3ecd7a^{tree}'
git rev-parse 'HEAD:etclabscore/core-geth'
```

Both read `29bf8ae0e7b759e68f6af107647f6ffcfcb27015` at vendoring, 2026-09-21, checked against a
control (the tree of `v1.12.20`'s commit `c2fb44129`, which is `ed3abaab12`), confirming the
comparison can report a mismatch.

Swept for blobs over 100 MiB across the whole grafted history before landing: **0 hits**, the sweep
calibrated at 1 MiB first, which returns 135. The largest blob in the history is
`tests/files/VMTests/vmInputLimits.json` at 60.3 MiB.

