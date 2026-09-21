# archive-reference-material

**Frozen. Do not edit anything here.** Preserved copies of Ethereum Classic material that upstreams
have deprecated, deleted, or will. **Nothing here is maintained, corrected, or relabeled by this
repository.** It is the historical record, and its value is that it is exactly what upstream
published.

Each entry is a whole upstream repository with its full history, merged under `<org>/<repo>/`
without squashing, so every upstream commit keeps its original hash and stays reachable from
`main`. A few entries are extractions instead: a named subset of files, recorded with the ref they
came from.

### Test corpora

| entry | source | posture |
|---|---|---|
| `etclabscore/tests` | `etclabscore/tests` @ `06ec708ea7` | full vendor, full history; upstream deprecating |
| `ethereumproject/tests` | `ethereumproject/tests` @ `c05254038` | full vendor; **the original ETC suite**, org archived |
| `multi-geth/tests` | `multi-geth/tests` @ `784ff9641` | full vendor: the multi-geth-era cross-client suite |
| `etclabscore/hive` | `etclabscore/hive` @ `dd1a8a2d6` | full vendor: the ETC end-to-end harness |
| `etclabscore/goldset` | `etclabscore/goldset` @ `2a3514bc8` | full vendor: historical results against the live network |

### The client lineage

The clients that carried this chain, whole and with history. **This chain has had core-dev churn
where Ethereum has had one client throughout, so its clients ARE the record of its eras**, and a
subset cannot show how a client changed across one.

| entry | source | frozen at | era |
|---|---|---|---|
| `ethereumproject/go-ethereum` | `ethereumproject/go-ethereum` @ `22f308105` | 2019-08-29 | **Classic Geth**, the first ETC-specific client |
| `ethereumproject/parity` | `ethereumproject/parity` @ `92466a7d6` | 2018-04-06 | ETC's own Parity fork |
| `openethereum/parity-ethereum-dao` | `openethereum/parity-ethereum` @ `2cf4549d0` | 2016-07-16 | Parity at the DAO fork |
| `openethereum/parity-ethereum` | `openethereum/parity-ethereum` @ `55c90d401` | 2020-02-05 | Parity at its last ETC-supporting state |
| `openethereum/openethereum` | `openethereum/openethereum` @ `8ca8089e9` | 2020-06-01 | **extraction only**: the chain specifications, at release `v3.0.1` |
| `multi-geth/multi-geth` | `multi-geth/multi-geth` @ `38865665e` | 2021-02-27 | between Parity and core-geth |
| `besu-eth/besu-etc` | `besu-eth/besu` @ `eb4248c99` | 2026-02-09 | Besu's ETC support, which lives only in a fork org |
| `etclabscore/core-geth` | `etclabscore/core-geth` @ `7ef3ecd7a` | 2024-12-16 | the client after multi-geth, frozen at the repository boundary |

`PROVENANCE.md` also records the Ethereum Classic tooling, mining and signing repositories held
here, and the Go modules the production client builds against, each with its ref.

**Two repositories are named core-geth. Read the organization, not the bare name.**

**`ethereumclassic/core-geth` is deliberately absent.** It is the live production client, so it
fails the test this archive applies: what disappears if the upstream vanishes tomorrow. Vendor it
when it is actually deprecated, not before.

**`etclabscore/core-geth` is a different repository and is in the table above**, frozen at the
commit the successor was created from. It holds the era the ETC Cooperative funded, from January
2022 until that organization moved to maintenance mode at the end of 2024, and `PROVENANCE.md`
cites the Cooperative's own published record for both ends of it. Its upstream is alive and has
committed past that commit; that continuation is deliberately unreachable here, and completing it
would erase the boundary the entry exists to record.

`PROVENANCE.md` records refs, dates, and known defects. Read it before using any of this.

## Frozen means frozen, including the defects

Parts of this material are **wrong**, and they stay wrong.

The clearest case: `etclabscore`'s Ethereum Classic fork labels were produced by a text
substitution over Ethereum fixtures, and a rename does not change the EIP set inside a fixture.
Some labels overclaim. One rewrite mapped Ethereum's proof-of-stake transition onto a
proof-of-work upgrade, so fixtures carrying `difficulty: 0x00` sit under an Ethereum Classic
label, asserting that a difficulty-zero block is valid, which on this network it is not.

**Do not fix them here.** A corrected mirror is no longer a mirror: it cannot be compared against
what upstream published, which is the only reason to keep a copy of a dead corpus. The defects
are documented in `PROVENANCE.md` so a reader knows what they are holding.

## What to do instead

**Build a suite outside this repository, using this as source material.** Where a fixture here is
sound, a suite can reference it. Where it is wrong, the suite carries the correct version, as its
own work named its own way, with this archive left untouched as the record of what was inherited.

## Practical consequences

- **No formatting tool runs here.** A conformance vector's bytes are its meaning. This repository
  configures no hook, and any tool added later must report rather than rewrite.
- **Mirrored names are kept exactly**: directories, filenames, and the fork labels inside a
  fixture.
- **Adding to the archive is expected; changing it is not.** When an upstream deletes something
  else, extract it here and record the refs.
- **A vendored tree is verified by TREE HASH, never by diff.** `git subtree` relocates a corpus
  under a prefix, so `git diff <ref>..HEAD -- <path>` reports every file as added and proves
  nothing. Compare `git rev-parse '<ref>^{tree}'` against `git rev-parse 'HEAD:<org>/<repo>'`;
  two identical hashes is the whole proof.
- **Cloning this repository clones every entry's history.** Everything is reachable from `main`,
  so a consumer that needs one entry, such as a submodule pinned to one upstream commit, still
  receives the whole archive. `PROVENANCE.md` says what that means for each consumer it names.
