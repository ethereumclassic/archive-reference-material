# Provenance

Every corpus here is copied and held by this repository because losing its upstream would lose
something Ethereum Classic depends on. Each group below states its own ground.

**Two postures, chosen by what would be lost if the upstream vanished tomorrow:** a full vendor,
the whole repository with its history, or an extraction of named files.
`EXTRACTION-historic-clients.md` and `meowsbits/EXTRACTION.md` record the extractions.

**How the tables are measured.** `contents` counts the entries of the tree at the frozen ref,
gitlinks included, and sums the sizes of its blobs; `commits` counts the history reachable from
that ref. Each describes a ref that cannot change, and each was measured from this repository's
own objects.

## Where each repository's record is

**Each archived repository has one record, `provenance/<org>/<repo>.md`, named for its upstream
repository.** It holds everything this archive records about that repository, oldest first, and
every new record about it is appended there. This file keeps the introductions of the passes that
vendored several repositories at once, and this index, which gains a row for each new repository.

| repository | record | folder at `main`'s tip |
|---|---|---|
| `besu-eth/besu` | [`provenance/besu-eth/besu.md`](provenance/besu-eth/besu.md) | `besu-eth/besu-etc/` |
| `ETCCooperative/etc-nix` | [`provenance/ETCCooperative/etc-nix.md`](provenance/ETCCooperative/etc-nix.md) | `ETCCooperative/etc-nix/`, `ETCCooperative/etc-nix-coregeth-src-proxyvendor/` |
| `ETCCooperative/nethermind-etc-plugin` | [`provenance/ETCCooperative/nethermind-etc-plugin.md`](provenance/ETCCooperative/nethermind-etc-plugin.md) | `ETCCooperative/nethermind-etc-plugin/` |
| `etclabscore/ancient-store-s3` | [`provenance/etclabscore/ancient-store-s3.md`](provenance/etclabscore/ancient-store-s3.md) | `etclabscore/ancient-store-s3/` |
| `etclabscore/classic-geth-supervisor.sh` | [`provenance/etclabscore/classic-geth-supervisor.sh.md`](provenance/etclabscore/classic-geth-supervisor.sh.md) | `etclabscore/classic-geth-supervisor.sh/` |
| `etclabscore/core-geth` | [`provenance/etclabscore/core-geth.md`](provenance/etclabscore/core-geth.md) | `etclabscore/core-geth/` |
| `etclabscore/core-pool` | [`provenance/etclabscore/core-pool.md`](provenance/etclabscore/core-pool.md) | `etclabscore/core-pool/` |
| `etclabscore/core-pool-interface` | [`provenance/etclabscore/core-pool-interface.md`](provenance/etclabscore/core-pool-interface.md) | `etclabscore/core-pool-interface/` |
| `etclabscore/eserialize` | [`provenance/etclabscore/eserialize.md`](provenance/etclabscore/eserialize.md) | `etclabscore/eserialize/` |
| `etclabscore/ethereum-json-rpc-specification` | [`provenance/etclabscore/ethereum-json-rpc-specification.md`](provenance/etclabscore/ethereum-json-rpc-specification.md) | `etclabscore/ethereum-json-rpc-specification/` |
| `etclabscore/eth-x-chainspec` | [`provenance/etclabscore/eth-x-chainspec.md`](provenance/etclabscore/eth-x-chainspec.md) | `etclabscore/eth-x-chainspec/` |
| `etclabscore/expedition` | [`provenance/etclabscore/expedition.md`](provenance/etclabscore/expedition.md) | `etclabscore/expedition/` |
| `etclabscore/go-etchash` | [`provenance/etclabscore/go-etchash.md`](provenance/etclabscore/go-etchash.md) | `etclabscore/go-etchash/` |
| `etclabscore/go-jsonschema-walk` | [`provenance/etclabscore/go-jsonschema-walk.md`](provenance/etclabscore/go-jsonschema-walk.md) | `etclabscore/go-jsonschema-walk/` |
| `etclabscore/goldset` | [`provenance/etclabscore/goldset.md`](provenance/etclabscore/goldset.md) | `etclabscore/goldset/` |
| `etclabscore/go-openrpc-reflect` | [`provenance/etclabscore/go-openrpc-reflect.md`](provenance/etclabscore/go-openrpc-reflect.md) | `etclabscore/go-openrpc-reflect/` |
| `etclabscore/hive` | [`provenance/etclabscore/hive.md`](provenance/etclabscore/hive.md) | `etclabscore/hive/` |
| `etclabscore/jade-desktop` | [`provenance/etclabscore/jade-desktop.md`](provenance/etclabscore/jade-desktop.md) | `etclabscore/jade-desktop/` |
| `etclabscore/jade-rs` | [`provenance/etclabscore/jade-rs.md`](provenance/etclabscore/jade-rs.md) | `etclabscore/jade-rs/` |
| `etclabscore/jade-signer-rpc` | [`provenance/etclabscore/jade-signer-rpc.md`](provenance/etclabscore/jade-signer-rpc.md) | `etclabscore/jade-signer-rpc/` |
| `etclabscore/rpcflow-meta-schema` | [`provenance/etclabscore/rpcflow-meta-schema.md`](provenance/etclabscore/rpcflow-meta-schema.md) | `etclabscore/rpcflow-meta-schema/` |
| `etclabscore/signatory` | [`provenance/etclabscore/signatory.md`](provenance/etclabscore/signatory.md) | `etclabscore/signatory/` |
| `etclabscore/signatory-core` | [`provenance/etclabscore/signatory-core.md`](provenance/etclabscore/signatory-core.md) | `etclabscore/signatory-core/` |
| `etclabscore/sig.tools` | [`provenance/etclabscore/sig.tools.md`](provenance/etclabscore/sig.tools.md) | `etclabscore/sig.tools/` |
| `etclabscore/tests` | [`provenance/etclabscore/tests.md`](provenance/etclabscore/tests.md) | `etclabscore/tests/`, `etclabscore/tests-etcversion_filled/` |
| `etclabscore/tests-etc` | [`provenance/etclabscore/tests-etc.md`](provenance/etclabscore/tests-etc.md) | `etclabscore/tests-etc/` |
| `ethereumproject/go-ethereum` | [`provenance/ethereumproject/go-ethereum.md`](provenance/ethereumproject/go-ethereum.md) | `ethereumproject/go-ethereum/` |
| `ethereumproject/parity` | [`provenance/ethereumproject/parity.md`](provenance/ethereumproject/parity.md) | `ethereumproject/parity/` |
| `ethereumproject/tests` | [`provenance/ethereumproject/tests.md`](provenance/ethereumproject/tests.md) | `ethereumproject/tests/` |
| `ethereumstack/ethereumstack.tools` | [`provenance/ethereumstack/ethereumstack.tools.md`](provenance/ethereumstack/ethereumstack.tools.md) | `ethereumstack/ethereumstack.tools/` |
| `iquidus/dagd` | [`provenance/iquidus/dagd.md`](provenance/iquidus/dagd.md) | `iquidus/dagd/` |
| `iquidus/ecip-1099-data` | [`provenance/iquidus/ecip-1099-data.md`](provenance/iquidus/ecip-1099-data.md) | `iquidus/ecip-1099-data/` |
| `iquidus/ethash` | [`provenance/iquidus/ethash.md`](provenance/iquidus/ethash.md) | `iquidus/ethash/` |
| `iquidus/ethminer` | [`provenance/iquidus/ethminer.md`](provenance/iquidus/ethminer.md) | `iquidus/ethminer/` |
| `iquidus/libdag` | [`provenance/iquidus/libdag.md`](provenance/iquidus/libdag.md) | `iquidus/libdag/` |
| `iquidus/open-ethereum-pool` | [`provenance/iquidus/open-ethereum-pool.md`](provenance/iquidus/open-ethereum-pool.md) | `iquidus/open-ethereum-pool/` |
| `meowsbits/51-percent-docs` | [`provenance/meowsbits/51-percent-docs.md`](provenance/meowsbits/51-percent-docs.md) | `meowsbits/51-percent-docs/` |
| `meowsbits/canhaz.net` | [`provenance/meowsbits/canhaz.net.md`](provenance/meowsbits/canhaz.net.md) | `meowsbits/canhaz.net/` |
| `meowsbits/eserialize-cli` | [`provenance/meowsbits/eserialize-cli.md`](provenance/meowsbits/eserialize-cli.md) | `meowsbits/eserialize-cli/` |
| `meowsbits/go-miner-sim` | [`provenance/meowsbits/go-miner-sim.md`](provenance/meowsbits/go-miner-sim.md) | `meowsbits/go-miner-sim/` |
| `meowsbits/mini-etc-network` | [`provenance/meowsbits/mini-etc-network.md`](provenance/meowsbits/mini-etc-network.md) | `meowsbits/mini-etc-network/` |
| `meowsbits/x-client-tests-project` | [`provenance/meowsbits/x-client-tests-project.md`](provenance/meowsbits/x-client-tests-project.md) | `meowsbits/x-client-tests-project/` |
| `multi-geth/multi-geth` | [`provenance/multi-geth/multi-geth.md`](provenance/multi-geth/multi-geth.md) | `multi-geth/multi-geth/` |
| `multi-geth/tests` | [`provenance/multi-geth/tests.md`](provenance/multi-geth/tests.md) | `multi-geth/tests/` |
| `openethereum/parity-ethereum` | [`provenance/openethereum/parity-ethereum.md`](provenance/openethereum/parity-ethereum.md) | `openethereum/parity-ethereum/`, `openethereum/parity-ethereum-dao/` |
| `yusufpapurcu/wmi` | [`provenance/yusufpapurcu/wmi.md`](provenance/yusufpapurcu/wmi.md) | `yusufpapurcu/wmi/` |

---

# The Ethereum Classic client lineage — vendored whole, 2026-09-21

**Ten repositories, whole, with history.** Operator decision: this chain's clients are the record
of its eras. Ethereum has had one client present throughout; Ethereum Classic has had core-dev
churn (Classic Geth, then Parity, then multi-geth, then core-geth), and an extraction cannot show
how a client changed across an era.

**Mechanism:** `git subtree add` without `--squash`, of the upstream commit at the named ref,
confirmed published by the upstream itself. Every one is verified by TREE HASH against that
commit: `git rev-parse '<ref>^{tree}'` equals `git rev-parse 'HEAD:<prefix>'` for all ten. A
diff proves nothing here, because subtree relocates the corpus under a prefix and reports every
file as added.

**Totals:** 58,093 commits, 42,709 files, 1,463 MiB.

**Nothing exceeds GitHub's 100 MiB per-file limit**, checked 2026-09-21 across every object
reachable from `main`, largest 62.0 MiB, with the check calibrated at 1 MiB first so that an
empty result means none. That check is not optional: grafted history is permanent, and one
oversized blob would make this repository unpushable forever.


---

# Ethereum Classic tooling and personal-account work — vendored 2026-09-21

**Twenty-nine repositories, whole, with history**, plus one extraction. Selected against this
archive's own test: what disappears if the upstream vanishes tomorrow.

Three groups, and the reason differs by group:

- **`etclabscore/`**: that organization is scheduled for deprecation, so its Ethereum
  Classic-specific repositories are the clearest instance of the test.
- **`iquidus/`**: the author of ECIP-1099. The Etchash implementation work lives in that
  account's **forks**, not in the upstreams they were forked from, so vendoring the upstream
  would preserve the wrong thing.
- **`meowsbits/`**: the author of ECIP-1100. **Eight of the vendored trees across these groups
  ship no license file at all**, and several carry zero forks upstream; GitHub preserves a
  deleted repository's forks, so a zero-fork personal repository has nothing to survive it.

Both authors have left the Ethereum Classic ecosystem.

**Deliberately excluded**, because they fail the test rather than because they lack value:
`iquidus/explorer` (737 stars, BSD-3-Clause, widely forked, not Ethereum Classic-specific),
`iquidus/blockspider` (a general blockchain crawler), and the live `diega/*` repositories.
`meowsbits/geth-prometheus` was checked and is an **empty repository** with zero refs.

Every entry is verified by TREE HASH against its upstream commit, with a control confirming the
comparison can report a mismatch. `meowsbits/EXTRACTION.md` covers the gists and documents.

---

# Go modules the production client builds against, vendored 2026-09-21

**Two repositories, whole, with history, held on the ground `etclabscore/tests` is held on: each is a
live build dependency of the production Ethereum Classic client.** `ethereumclassic/core-geth`
requires `github.com/etclabscore/go-openrpc-reflect` `v0.0.37` directly and
`github.com/etclabscore/go-jsonschema-walk` `v0.0.6` indirectly. Its `v1.13.0-rc2` tag and the
`etclabscore/core-geth` tree vendored above both carry exactly the `go.sum` lines recorded below, and
neither names any other `github.com/etclabscore/` module. Both modules are published from the
organization the tooling section above records as scheduled for deprecation.

**The set is closed, and that was checked rather than assumed.** At `v0.0.37`, `go-openrpc-reflect`
requires one module from that organization, `go-jsonschema-walk` `v0.0.6`; at `v0.0.6`,
`go-jsonschema-walk` requires none.

**Mechanism:** `git subtree add` without `--squash`, of the upstream's default branch, as for every
entry above. **Every branch and every tag upstream is reachable from that ref.** That was read from
each upstream's own `ls-remote` on 2026-09-21, not from a clone's copy of it, so one ref per
repository carries all of them, and every tagged commit resolves here and is reachable from `main`.
Pull-request refs are not branches and are not held; on 2026-09-21, four pull-request heads on
`go-openrpc-reflect` pointed at commits outside its history.

**The tagged commits are here; the tag objects are not.** This repository carries no tag refs, and a
subtree add brings in commits, not the annotated tag objects that name them. For these two that is a
real loss, because many of the tags are PGP-signed, both pinned versions among them. Each entry's tag
map therefore records every tag's object ID beside its commit, so a tag recovered from any other copy
can be checked against the one upstream published.

**In both entries the vendored tree is NOT the pinned version.** Each upstream committed past the tag
the client pins, so `HEAD:etclabscore/<repo>` is the default branch, and the pinned version is an
older commit in the grafted history. Each entry names that commit and what lies between.

### Verifying a pinned version from this repository alone

The tree hash proves a vendored default branch is upstream's. It says nothing about a pinned version;
**the module hash does**, computed from this repository's object store and never from GitHub. Run from
the repository root:

```sh
C=ba5a99fa846de681b412765a38a3fb11b0016208 M=github.com/etclabscore/go-openrpc-reflect V=v0.0.37
W=$(mktemp -d)
git init -q --bare "$W/src.git"
git -C "$W/src.git" fetch -q "$PWD" "$C"
git -C "$W/src.git" update-ref "refs/tags/$V" "$C"
git config -f "$W/gitconfig" url."file://$W/src.git".insteadOf "https://$M"
git config -f "$W/gitconfig" protocol.file.allow always
(cd "$W" && GIT_CONFIG_GLOBAL="$W/gitconfig" GIT_CONFIG_NOSYSTEM=1 \
  GOPROXY=direct GOSUMDB=off GOFLAGS=-modcacherw GOMODCACHE="$W/modcache" \
  go mod download -json "$M@$V")
```

`Sum` and `GoModSum` must equal the entry's table, and `Origin.Hash` names the commit the zip was
built from. `GOPROXY=direct` makes the Go toolchain fetch from the source repository itself, and the
redirect makes that source this repository. **Then move the tag to the previous
version's commit and run it again. The hashes must change**; if they do not, the check is reading from
somewhere other than this repository.

Verified 2026-09-21 with go1.26.6: both pinned versions reproduce both of their hashes, which
equal the checksum database's for the same versions, and both controls change them.

### Depending on this repository instead of an upstream

A client pinning one of these modules can keep building if the upstream disappears, by pointing a
`replace` at this repository at the pinned commit's pseudo-version. The WMI fork, recorded in the
next section, works the same way:

```
replace github.com/etclabscore/go-openrpc-reflect v0.0.37 => github.com/ethereumclassic/archive-reference-material v0.0.0-20220829134241-ba5a99fa846d
replace github.com/etclabscore/go-jsonschema-walk v0.0.6 => github.com/ethereumclassic/archive-reference-material v0.0.0-20200501124244-44dea48ac8a4
replace github.com/yusufpapurcu/wmi v1.2.4 => github.com/ethereumclassic/archive-reference-material v0.0.0-20240128142943-6c94d732ac31
```

It works because each pinned commit's own tree has the module at its root, and its `go.mod`
declares the path it replaces, which the Go toolchain requires of a replacement module. No tag is
needed: the commits are reachable from `main` as parents of the subtree merges. The `go.sum` lines
such a `replace` records:

```
github.com/ethereumclassic/archive-reference-material v0.0.0-20200501124244-44dea48ac8a4 h1:VznaTTy3elSE7gKGv4oRwsbQHgEuRNQG6zV7IVfBSZg=
github.com/ethereumclassic/archive-reference-material v0.0.0-20200501124244-44dea48ac8a4/go.mod h1:VdfDY72AFAiUhy0ZXEaWSpveGjMT5JcDIm903NGqFwQ=
github.com/ethereumclassic/archive-reference-material v0.0.0-20220829134241-ba5a99fa846d h1:6JFCC7f5SjTMgPDfBPKXHOgNZJ6rL/Cl4BgXMw8iDKA=
github.com/ethereumclassic/archive-reference-material v0.0.0-20220829134241-ba5a99fa846d/go.mod h1:0404Ky3igAasAOpyj1eESjstTyneBAIk5PgJFbK4s5E=
github.com/ethereumclassic/archive-reference-material v0.0.0-20240128142943-6c94d732ac31 h1:zclga0HG+cnGkrCjFGc39imRUz73X4UJNBIA/yUAvN8=
github.com/ethereumclassic/archive-reference-material v0.0.0-20240128142943-6c94d732ac31/go.mod h1:SBZ9tNy3G9/m5Oi98Zks0QjeHVDvuK0qfxQmPyzfmi0=
```

Verified 2026-09-21 with go1.26.6, from a copy of this repository holding `main` and no tags: each
pseudo-version resolves to its pinned commit and produces the lines above, and a program importing
what the production client imports builds for Linux and Windows inside that client's module graph
with the three `replace` lines in place. **The cost is the layout's**: resolving a pseudo-version
directly from this repository fetches every entry's history, not the module alone.

---

# The ETC Cooperative's repositories, as its organization held them — vendored 2026-10-27

**Two repositories, whole, with history, each frozen at the last state its merge history places in
the `ETCCooperative` organization.** Its GitHub profile names the ETC Cooperative, which funded
Core-Geth development from January 2022 and was in maintenance mode by early 2025, as recorded under
`etclabscore/core-geth/` above. Both repositories have left it: on 2026-10-27, GitHub redirected
`ETCCooperative/nethermind-etc-plugin` to `nethermindEtc/nethermind-etc-plugin` and
`ETCCooperative/etc-nix` to `classix-dev/etc-nix`. These entries hold the organization's record of
the two, not their continuation under other owners.

**The merge history dates the boundary.** When GitHub merges a pull request with a merge commit, it
writes the head repository's owner into the message, `Merge pull request #N from <owner>/<branch>`,
so each such merge records who held the repository at that moment:

| repository | taken at | last merge naming `ETCCooperative` | first naming another owner |
|---|---|---|---|
| `nethermind-etc-plugin` | #18's merge, 2026-09-24 | #18, 2026-09-24 | #19, 2026-10-19: `nethermindEtc` |
| `etc-nix` | #5's merge, 2026-09-17 | #4, 2026-09-17, two minutes earlier | #6, 2026-10-14: `classix-dev` |

Pull-request numbers in this group are each upstream repository's own, not this archive's. Pull
request #5 was merged by rebase, which writes no owner. Later upstream commits are not held and do
not resolve here; whether the organization still held a repository when they were made is not
established either way.

**Where the commits came from.** Each ref was fetched by its hash. The commits held by a clone of
each repository, last fetched from the organization on 2026-08-26, came from that clone; the later
ones came from each repository's current address. Every branch and tag of each clone is reachable
from the refs below, so the commits it held are the same objects, by hash, as the ones the new
owners serve.

# Every other ref of `etclabscore/tests` and `etclabscore/tests-etc` — kept 2026-10-28

**The first repositories held under the rule that an archived repository keeps every ref it had**
(`AGENTS.md`, "Layout"). 36 history-only merges, 32 for `etclabscore/tests` and 4 for
`etclabscore/tests-etc`, add 343 and 5 commits and nothing at `main`'s tip: each takes a ref's commit
as its second parent and keeps its first parent's tree. Each repository's record lists every one of
its refs by name and commit, and says how each is kept:
[`provenance/etclabscore/tests.md`](provenance/etclabscore/tests.md) and
[`provenance/etclabscore/tests-etc.md`](provenance/etclabscore/tests-etc.md).
