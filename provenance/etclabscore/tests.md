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

