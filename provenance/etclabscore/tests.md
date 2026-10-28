# `etclabscore/tests`

The record of `https://github.com/etclabscore/tests` in this archive, oldest first. Its folders at
`main`'s tip are `etclabscore/tests/` and `etclabscore/tests-etcversion_filled/`.

## `etclabscore/tests/` — full vendor, full history

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/tests` |
| branch | `etcversion_filled-etcversion_filled-shanghai_2` |
| ref | `06ec708ea7` |
| upstream date | 2023-08-25 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 3,182 commits |
| contents | 9,298 files · 8,728 json · 915 MiB |

**Taken at `etcversion_filled-etcversion_filled-shanghai_2`, not at the default branch.** That
branch carries the ETC history. The default branch, `develop`, sits 15 commits behind it, and
archiving `develop` would silently preserve a different corpus. `06ec708ea7` is addressable here,
reachable from `main`.

### Why all of it, and why the history

The upstream is scheduled for deprecation, so **every part of it is at risk**, including the
history, which is the only record of how the ETC labels were produced. It is also a **live build
dependency of the production Ethereum Classic client**, which consumes it as a submodule, so its
removal breaks a running conformance suite rather than merely an archive.

### Frozen at `06ec708ea7` — and here is how to prove it

This corpus is **not maintained here**. It is the upstream state at that ref and stays that way.

**Check it by tree hash, not by diff.** `git subtree` relocates the corpus under a prefix, so
`git diff <ref>..HEAD -- <path>` compares upstream's root-level paths against the prefixed ones
here and reports every file as added. That command reads like a freeze check and is not one: it
reports the whole corpus changed while nothing has been touched.

Compare the trees directly instead:

```sh
git rev-parse '06ec708ea7^{tree}'
git rev-parse 'HEAD:etclabscore/tests'
```

**Two identical hashes is the whole proof**: the archive is bit-for-bit upstream's tree. Verified
2026-09-21: both are `4f98c5a20296d80639bf64c7897a85d5897f2bc1`.

If they ever differ, something edited the archive. That is a defect to revert, not a change to
review.

Gaps and inherited mistakes are answered outside this repository, never by editing these files.

### Known defects, measured 2026-08-21 — preserved as published, NOT corrected

The ETC fork labels were produced by a text substitution (`makeetc.sh`) over Ethereum fixtures.
**Renaming a label does not change the EIP bundle inside the fixture.**

| label | files | derived from | sound? |
|---|---:|---|---|
| `ETC_Phoenix` | 7,469 | Istanbul | yes, equivalent bundle |
| `ETC_Magneto` | 5,301 | Berlin | yes, the client calls it equivalent |
| `ETC_Agharta` | 96 | Constantinople+Fix | probably |
| `ETC_Atlantis` | 90 | Byzantium | **no**, bundle divergence |
| `ETC_Mystique` | 5,496 | London | **no**, bundle divergence |
| `ETC_Spiral` | ~0 | — | **absent**: current mainnet has no coverage |

The sharpest defect: `Merge` was renamed onto `ETC_Mystique` at scale, and Merge-labeled blocks
carry proof-of-stake semantics: `difficulty: 0x00`, zeroed `mixHash`, zero `nonce`. **Those
fixtures assert that a difficulty-0 block is valid. On a proof-of-work chain it is not.**

Read rule sets from the production client, never from a rendered specification.

### Easy to lose

`etclabscore/tests/src-etc/`: 24 filler files including `stChainId`. The only **ETC-authored**
test source that exists upstream, as opposed to renamed Ethereum material.

### Consumed as a submodule from this repository

A client whose submodule points at this repository pins the same commit, `06ec708ea7`, and
resolves it because the commit is reachable from `main` as the second parent of this entry's
merge. **The cost is the layout's, and it is not small.** A clone of this repository fetches every
entry's history, not this corpus alone, and a shallow submodule initialization first fetches the
default branch's tip, which is the whole archive's tree, before it fetches the pinned commit.
Weigh that before pointing a submodule here while the upstream still stands.

# The fixture commits core-geth's 2023 releases pin — vendored 2026-10-27

**A second ref of `etclabscore/tests`, taken for the releases that pin it.** core-geth's `v1.12.9`
and `v1.12.10` pin `etclabscore/tests` at `315779c508`, and `v1.12.11` to `v1.12.13` at
`c138c1391d`. Neither commit is in the history of the `etclabscore/tests/` entry, which is frozen at
`06ec708ea7` on a branch that diverged from this one at `5e0bdda91d`. `c138c1391d` is the tip of
`etcversion_filled` and `315779c508` its parent, so this ref makes both pins reachable from `main`.

## `etclabscore/tests-etcversion_filled/`

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/tests` |
| ref | `etcversion_filled` @ `c138c1391deb604aa8efa97561b3f8edc49f0eb5` |
| upstream date | 2023-01-04 |
| vendored | 2026-10-27 |
| mechanism | `git subtree add`, **full history**, 3,176 commits |
| contents | 9,284 files · 8,722 json · 915 MiB |
| license | see NOTICE |
| tree | `d23d4bc03c52fece9279dc9f7d0ad66b9f4c5be4` |

```sh
printf '%s\n' 315779c508 c138c1391d | git cat-file --batch-check    # want: two lines, each of type commit
```

**It adds two commits to what this archive already held.** `315779c508` (2022-12-12) renames the
fork key `Merge` to `Merged` in `GeneralStateTests/stExample/accessListExample.json`, and
`c138c1391d` (2023-01-04) renames it back, there and in `docs/t8ntool.rst`. Every other commit in
its history is the `etclabscore/tests/` entry's own, and 9,250 of the 9,256 distinct blobs at its
tip are in that entry's tree, so the object store barely grows, while the tree at this prefix is a
second copy of the corpus. `LegacyTests` is a gitlink to `ethereum/legacytests` at the same commit
as the entry's, mapped in `.gitmodules` the same way.

Swept for blobs over 100 MiB across the whole history before landing: **0**, with the sweep
calibrated at 1 MiB, which returns 1,435. The largest blob in the history is 62.0 MiB,
`VMTests/vmInputLimits.json`, already held here.

## Every ref, kept 2026-10-28

**Every ref of `etclabscore/tests` is held from this record on**, each commit unchanged (`AGENTS.md`,
"Layout"). The two folders recorded above hold two of its refs, and 27 more are in their history.
The other 32 are held by history-only merges, one per branch: each takes the branch's tip as its
second parent and keeps its first parent's tree, so it adds no folder and changes no file. Five
pull-request heads sit at the commits of five of those branches.

**Why they matter.** From `v1.9.9-etclabscore` to `v1.12.8`, 39 releases, core-geth's
`tests/testdata` submodule pointed at `https://github.com/etclabscore/tests`, at commits that only
these refs hold and that `ethereum/tests`' `develop` does not:

| core-geth releases | `tests/testdata` pins | held by |
|---|---|---|
| `v1.9.9-etclabscore`, `v1.9.10-core`, `v1.10.0-core`, `v1.11.0`, `v1.11.1` | `763e8c59fa` | `multigeth`'s history |
| `v1.11.2` to `v1.11.7` | `9626d1a15a` | `multigeth`'s tip |
| `v1.11.8` | `44905c4e54` | `core-geth`'s history |
| `v1.11.9` to `v1.11.22`, with `v1.11.14-rc-messnet-1` and `-2` | `72bdca9504` | `core-geth`'s tip |
| `v1.12.0-rc1`, `v1.12.0-rc2`, `v1.12.0`, `v1.12.1` | `fb9f42e244` | `foundation-1.10.1-generated-1617316443`'s tip |
| `v1.12.2`, `v1.12.3` | `aad0e35d89` | `generate`'s tip |
| `v1.12.4` to `v1.12.8` | `2895f8a79a` | `core-geth-generate-1641224343`'s tip |

Read from core-geth's own history, with the URL its `.gitmodules` gives the path at each release.
Its development history pins more of these refs: 109 gitlink settings in core-geth's history pointed
at commits of them that `ethereum/tests` does not hold, 108 of those inside the copy of that history
held here under `etclabscore/core-geth/`. All of them resolve from `main` with these merges:

```sh
printf '%s\n' 763e8c59fa 9626d1a15a 44905c4e54 72bdca9504 fb9f42e244 aad0e35d89 2895f8a79a \
  | git cat-file --batch-check    # want: seven lines, each of type commit
```

`v1.12.14` to `v1.12.19` pin `ee3fa4c86d` in `tests/testdata`, under
`https://github.com/ethereum/tests`, which holds it; with `etcversion_filled-shanghai`'s merge, this
archive holds it too.

**What they hold.**

- **Twenty refs from etclabscore**, by meows and, for one commit, virtual-meowsbits, 2019-11 to
  2023-08: the fixtures multi-geth and then core-geth generated for Ethereum Classic, one generation
  after another, among them the heads of pull requests #1 to #5 and generations nothing pins. Their
  commits are not in `ethereum/tests`' `develop`, except the 265 that `etcversion_filled-shanghai`
  merges in from it.
- **Twelve branches of work on `ethereum/tests`**, the repository `etclabscore/tests` is forked from,
  2017 to 2019, by Dimitry, Dimitry Kh, winsvega, Andrei Maiboroda, Yoichi Hirai, Martin Holst
  Swende and Everton Fraga, as their commits name them. `ethereum/tests` has no branch of any of
  these names, and its `develop` holds none of their commits (both read 2026-10-28).

Each merge's message says what its ref holds and what pins it.

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/tests` |
| refs read | 2026-10-28, with `git ls-remote` |
| kept | 2026-10-28 |
| mechanism | `git merge -s ours --no-ff`, history only, 32 merges |
| commits added | 343 |
| contents at `main`'s tip | none: each merge's tree is its first parent's |
| license | see NOTICE |

**One merge per ref whose commit `main` did not reach**, in the order of their commits' dates, so a
ref in another's history is merged first and keeps a merge of its own. Each commit was fetched by its
hash from GitHub and confirmed against the upstream's own `git ls-remote`, and each merge is checked
by hash: its tree equals its first parent's, and its second parent is the ref's commit. To list the
merges, with the refs each holds:

```sh
git log --first-parent --format='%H%x09%(trailers:key=history-only-repository,valueonly,separator=)%x09%(trailers:key=history-only-ref,valueonly,separator=%x2C)' main \
  | awk -F'\t' '$2 == "etclabscore/tests"'
```

### Every ref, by name and commit

Read with `git ls-remote https://github.com/etclabscore/tests` on 2026-10-28, where `HEAD` points at
`develop`. Left out: `refs/pull/5/merge`, the test merge GitHub generates for an open pull request,
which is not history.

| ref | commit | kept as |
|---|---|---|
| `refs/heads/blake2f` | `ea652b96f9c994c580954155957fd4db86e0c4f2` | history-only merge |
| `refs/heads/core-geth` | `72bdca9504c73ea4b017451fa90f3b6d527730f9` | history-only merge |
| `refs/heads/core-geth-generate-1641224343` | `2895f8a79af520185e252ad0367a823e4efa8302` | history-only merge |
| `refs/heads/core-geth-generate-1641226090` | `2c362670709980a922f8def53f33332dae34d0d8` | history-only merge |
| `refs/heads/core-geth-generate-1660656180` | `aecc76cf2924600a2fa95e4b96b33e79a1244341` | history-only merge |
| `refs/heads/core-geth-generate-1662038940` | `ad8973c5ce84d011ea8f710f4f49505fd8762534` | history-only merge |
| `refs/heads/core-geth-generate-1662129360` | `cc323d5ca55efce3b358fe883c35eecec937af51` | history-only merge |
| `refs/heads/core-geth-generate-1662132957` | `a92c5fe5aae7bb4d9a9bdf19614a2add3f912d91` | history-only merge |
| `refs/heads/core-geth-generate-20220817` | `10ab47d315594239ce1080fc21222cc6fd031d4c` | history-only merge |
| `refs/heads/develop` | `0ca936b39291a7340eb8f35b82d7159042e958f5` | in the history of `etclabscore/tests/` |
| `refs/heads/develop-eip161-storage-tests` | `8d682b9122c18ce4fdd0df0b7210fea562f2ca95` | history-only merge |
| `refs/heads/eip-2046-separate` | `8bbbd484227684339ec64ed6a0083d0b137436c8` | history-only merge |
| `refs/heads/eip1380` | `b7dfd94d252714f53557260421e52eed8d76c0e2` | history-only merge |
| `refs/heads/eip2384` | `c3f764ebec315ee342f30b32013c095da88f3f1e` | history-only merge |
| `refs/heads/etcccore-dev` | `1ded72230a6cc7e621a3ccdb05decd1e468375c7` | history-only merge |
| `refs/heads/etccore-dev-generate` | `a4cc6a049e39e6ca4771235192e7a27fc3fb542a` | history-only merge |
| `refs/heads/etcversion` | `0a9515622b767866e15775a9071b832d9517d429` | in the history of `etclabscore/tests/` |
| `refs/heads/etcversion-develop` | `47712538893373840bb8a70b7215a18375fb182e` | history-only merge |
| `refs/heads/etcversion_filled` | `c138c1391deb604aa8efa97561b3f8edc49f0eb5` | folder `etclabscore/tests-etcversion_filled/` |
| `refs/heads/etcversion_filled-etcversion_filled-shanghai_2` | `06ec708ea7f3707826142a97a94b61d40c920696` | folder `etclabscore/tests/` |
| `refs/heads/etcversion_filled-shanghai` | `61301515e8158a9999447b7bbf7df5038c16a581` | history-only merge |
| `refs/heads/fill-t8ntool-etc` | `94d1acdc113ebe87eed21f864f677cc5d4aeeaf3` | history-only merge |
| `refs/heads/fix` | `2b7036362d02aab8746a2846d06a1070dd84d29d` | in the history of `etclabscore/tests/` |
| `refs/heads/fixlegacy` | `fb3f4ad076fa6d8a5b093d8ec8f9e5356b3b4f04` | in the history of `etclabscore/tests/` |
| `refs/heads/fixpoststatehash` | `50c070bc66a5a4a85b57c99b3d95b2966048cb8c` | in the history of `etclabscore/tests/` |
| `refs/heads/fixRetestethConfigs` | `c3bdd5b100458a6c1a48c3ce2c83c85ccfe33082` | in the history of `etclabscore/tests/` |
| `refs/heads/foundation-1.10.1-generated-1617277537` | `c9be23439bad1a9c6589ecb185d88c38fd6913e7` | history-only merge |
| `refs/heads/foundation-1.10.1-generated-1617316443` | `fb9f42e2448c928e71744fa900694d081d3eb6c6` | history-only merge |
| `refs/heads/foundation-1.10.8-keep-generated` | `cd261555802d9f67667c6380f7e75de8a1ad893b` | history-only merge |
| `refs/heads/generate` | `aad0e35d8918a16ece01bba74817788d2960649b` | history-only merge |
| `refs/heads/hivetests` | `11e4c93977c83ceb8615198e0fbbee00eb956c8c` | in the history of `etclabscore/tests/` |
| `refs/heads/i652` | `a2d65ccd467dcc839a050044ddc220f8ad9b0451` | in the history of `etclabscore/tests/` |
| `refs/heads/init-create-revert-returndatasize` | `f594266752be960a8e7d668c004c6609b673aee8` | history-only merge |
| `refs/heads/istanbul` | `34c14b49a169590984109c827619d2579bcdb41e` | in the history of `etclabscore/tests/` |
| `refs/heads/istanbule` | `b18724e967c2bc51c42bf9cad6f589f2fe098d1a` | history-only merge |
| `refs/heads/legacy` | `1470def2f70691b71aec176a1292c79945307b92` | in the history of `etclabscore/tests/` |
| `refs/heads/master` | `4553e8beaeab130a21e2a1d3ef063fe48606413a` | in the history of `etclabscore/tests/` |
| `refs/heads/multigeth` | `9626d1a15ae3d3cd4501370b5642bc221719ea7e` | history-only merge |
| `refs/heads/multigeth-ewasm` | `91ef7adcd384fa755767b1ae5606d434c3a7eb86` | history-only merge |
| `refs/heads/new-release-v700-beta1` | `9b0cab7257ead8951252429d76d3c4521caa6728` | in the history of `etclabscore/tests/` |
| `refs/heads/readme` | `008603bfc4109a619cd5287200241ff1363cc066` | in the history of `etclabscore/tests/` |
| `refs/heads/retesteth` | `d6918b277a727a935d9fe0273e1f07ca025be072` | in the history of `etclabscore/tests/` |
| `refs/heads/retesteth-aleth-ecprecompiles` | `a3ae7c3c5bf1788e1c3e778ec889f11f3c227814` | in the history of `etclabscore/tests/` |
| `refs/heads/retesteth-aleth-istanbul` | `0aac2883cfee0cfe7d25b37329ef727431218cef` | history-only merge |
| `refs/heads/retesteth-chainid` | `72c2713a0428d7c43fbc0219bf7254afe31e1b90` | in the history of `etclabscore/tests/` |
| `refs/heads/retesteth-ripemd160` | `f73b15d1e447bafb8a0939ab68fdcb22e0bf62b5` | in the history of `etclabscore/tests/` |
| `refs/heads/retesteth2` | `dc78a6876776cafdd77c087daf2e819036ae28e7` | in the history of `etclabscore/tests/` |
| `refs/heads/rpctests` | `c8f67a3b3323d7da205f3585eadd0834d8ce6b65` | history-only merge |
| `refs/heads/should-fail` | `7f12ded1b644f80eb0ec43338e53595fe0b3af27` | history-only merge |
| `refs/heads/trgen` | `b8a27bb66ada0da7d222b32adb66b3e5ed4a0aaa` | in the history of `etclabscore/tests/` |
| `refs/heads/txtests-istanbul-testeth` | `a98786d9c057c38a26ea94e770f66aa027f7e1fb` | history-only merge |
| `refs/heads/txupdate` | `b3d183b4f053fd23eccb52bc2b845b21e7215457` | history-only merge |
| `refs/heads/txupdate2` | `a0c430053817ff5cf1023d1bf4b70e5538073490` | in the history of `etclabscore/tests/` |
| `refs/heads/updatelllc` | `23f11e68abb3f1ba6e8320c1e7e034177f7492b4` | in the history of `etclabscore/tests/` |
| `refs/heads/zeroSigTests` | `869a41cd682010c487da0e75daffd355fe56f73e` | history-only merge |
| `refs/pull/1/head` | `1ded72230a6cc7e621a3ccdb05decd1e468375c7` | history-only merge, at `etcccore-dev`'s commit |
| `refs/pull/2/head` | `a4cc6a049e39e6ca4771235192e7a27fc3fb542a` | history-only merge, at `etccore-dev-generate`'s commit |
| `refs/pull/3/head` | `c9be23439bad1a9c6589ecb185d88c38fd6913e7` | history-only merge, at `foundation-1.10.1-generated-1617277537`'s commit |
| `refs/pull/4/head` | `fb9f42e2448c928e71744fa900694d081d3eb6c6` | history-only merge, at `foundation-1.10.1-generated-1617316443`'s commit |
| `refs/pull/5/head` | `47712538893373840bb8a70b7215a18375fb182e` | history-only merge, at `etcversion-develop`'s commit |
| `refs/tags/olympic` | `782f3000ae86aa96f7ec2244043b7993c51aac57` | in the history of `etclabscore/tests/` |
| `refs/tags/PoC6` | `dfe66cab3fb533003ddaec7250d8fffbf3fbad65` | in the history of `etclabscore/tests/` |
| `refs/tags/v6.0.0-beta.1` | `2cd62aeec11da29766b30d500f2b9a96f1f28cf0` | in the history of `etclabscore/tests/` |
| `refs/tags/v6.0.0-beta.2` | `420f443477caa8516f1f9ee8122fafc3415c0f34` | in the history of `etclabscore/tests/` |
| `refs/tags/v6.0.0-beta.3` | `725dbc73a54649e22a00330bd0f4d6699a5060e5` | in the history of `etclabscore/tests/` |
| `refs/tags/v7.0.0-beta.1` | `cfbcd15f91d4d6e1785d9cae5c5c37f47e8bad46` | in the history of `etclabscore/tests/` |

**Tags.** No tag object is kept here. Each tag's commit is in the history of `etclabscore/tests/`:

```
tag            tag object                                commit
olympic        lightweight                               782f3000ae86aa96f7ec2244043b7993c51aac57
PoC6           78dbc3046acda4e517fd900301820172b99baff6  dfe66cab3fb533003ddaec7250d8fffbf3fbad65
v6.0.0-beta.1  lightweight                               2cd62aeec11da29766b30d500f2b9a96f1f28cf0
v6.0.0-beta.2  lightweight                               420f443477caa8516f1f9ee8122fafc3415c0f34
v6.0.0-beta.3  lightweight                               725dbc73a54649e22a00330bd0f4d6699a5060e5
v7.0.0-beta.1  lightweight                               cfbcd15f91d4d6e1785d9cae5c5c37f47e8bad46
```

`PoC6` is the one annotated tag. Its tag object, as text:

```
object dfe66cab3fb533003ddaec7250d8fffbf3fbad65
type commit
tag PoC6
tagger Christoph Jentzsch <jentzsch.software@gmail.com> 1412871379 +0200

All tests are compatible
```

That text, with its final newline, is the whole object: `git hash-object -t tag` reads it back as
`78dbc3046acda4e517fd900301820172b99baff6`, and with `-w` writes the object itself. The tagger's time
is 2014-10-09 18:16:19 +0200.

**Gitlinks.** The refs from 2022-08 on carry a `LegacyTests` gitlink, as the folders do, and this
archive holds none of the commits they point at, as for the folders. The five `core-geth-generate-*`
refs of 2022-08 and 2022-09 point at branch tips of `etclabscore/legacytests`, a fork of
`ethereum/legacytests`, that are not in `ethereum/legacytests`' `master` (read 2026-10-28). No gitlink
reaches `main`'s tip, so `.gitmodules` takes no mapping.

Swept for blobs over 100 MiB across the whole history of these refs before landing: **0**, with the
sweep calibrated at 1 MiB, which returns 2,332. The largest blob in those histories is
`VMTests/vmInputLimits.json` at 62.0 MiB, already held here. The largest they add is 45.3 MiB,
`BlockchainTests/GeneralStateTests/stStackTests/underflowTest.json`, in `etcversion_filled-shanghai`'s
history.
