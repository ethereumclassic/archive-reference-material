# `yusufpapurcu/wmi`

The record of `https://github.com/yusufpapurcu/wmi` in this archive, oldest first. Its folder at
`main`'s tip is `yusufpapurcu/wmi/`.

# The WMI fork the production client compiles into Windows builds, vendored 2026-09-21

**One repository, whole, with history, held on the ground the two Go modules above are held on: it
is compiled into the production Ethereum Classic client.** `ethereumclassic/core-geth` requires
`github.com/yusufpapurcu/wmi` `v1.2.4` as an indirect dependency, at its `v1.13.0-rc2` tag, with the
`go.sum` lines recorded below. It arrives through `github.com/shirou/gopsutil`, which core-geth
imports in `metrics/` and `cmd/utils/`. At the `v3.21.11+incompatible` core-geth requires, gopsutil
carries no root `go.mod` and imports the fork from its Windows sources, `cpu/cpu_windows.go`,
`host/host_windows.go` and `internal/common/common_windows.go`, which is why core-geth's own `go.mod`
lists it. Only Windows builds compile it.

**It is a fork on a personal GitHub account, and its original is archived.** The repository is a
GitHub fork of `github.com/StackExchange/wmi`, which its organization has archived. Holding the fork
here takes the personal account out of the build's source.

**Verify the pinned version with the recipe in "Verifying a pinned version from this repository
alone" above**, substituting:

```sh
C=6c94d732ac31d45ca1f62731b1682157ce85e224 M=github.com/yusufpapurcu/wmi V=v1.2.4
```

Verified 2026-09-21 with go1.26.6: `v1.2.4` reproduces both hashes below, which equal the checksum
database's, and moving the tag to `v1.2.3`'s commit changes them.

## `yusufpapurcu/wmi/`

| field | value |
|---|---|
| upstream | `https://github.com/yusufpapurcu/wmi` |
| fork of | `https://github.com/StackExchange/wmi`, archived |
| ref | `master` @ `6c94d732ac31d45ca1f62731b1682157ce85e224` |
| upstream date | 2024-01-28 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 139 commits |
| contents | 8 files · 48 KiB |
| license | see NOTICE |
| tree | `515c7a0516a7894b5be54412da18f2fe693682ae` |
| module | `github.com/yusufpapurcu/wmi` |
| consumed by | `ethereumclassic/core-geth`, as an indirect requirement through `github.com/shirou/gopsutil` |
| pinned version | `v1.2.4` @ `6c94d732ac31d45ca1f62731b1682157ce85e224`, the vendored ref itself |
| pinned commit time | 2024-01-28 14:29:43 UTC |
| `h1:` module zip | `h1:zFUKzehAFReQwLys1b/iSMl+JQGSCSjtVqQn9bBrPo0=` |
| `h1:` go.mod | `h1:SBZ9tNy3G9/m5Oi98Zks0QjeHVDvuK0qfxQmPyzfmi0=` |
| tags | 8: `1.2.0` and `v1.2.0` are annotated and name the same commit, the rest are lightweight; none is signed |

**Here the vendored tree IS the pinned version**, unlike the two Go modules above: `master` and
`v1.2.4` name the same commit.

**A pseudo-version for this commit is `v0.0.0-20240128142943-6c94d732ac31`**, from its commit time in
UTC and its first twelve hex digits; `cmd/go` derives the same string from the commit when no tag is
present. The commit's own tree has the module at its root, as upstream published it. The
`yusufpapurcu/wmi/` directory exists only in this repository's commits.

Its `go.mod` at `v1.2.4` requires one module, `github.com/go-ole/go-ole` `v1.2.6`, published by an
organization rather than a personal account. `master` is the only branch upstream, and the map below
covers every tag. Pull-request refs are not held; on 2026-09-21, four pull-request heads pointed at
commits outside its history.

Tag map, read from the upstream at vendoring:

```
tag      tag object                                commit
1.0.0    lightweight                               5d049714c4a64225c3c79a7cf7d02f7fb5b96338
1.1.0    lightweight                               cbe66965904dbe8a6cd589e2298e5d8b986bd7dd
1.2.0    b0999723f5e87ed04a0713ef40a7925db1c34315  37ec4cb466eb6e4feadc08c5d9a333bc7b294591
v1.2.0   1ac51c3612ffa6977ae52bfa6b2f199ca68e9276  37ec4cb466eb6e4feadc08c5d9a333bc7b294591
v1.2.1   lightweight                               441642c1665945335b93778e496324884ce569e7
v1.2.2   lightweight                               253c5f0cb35e666c4c0fc42083824e7c89f0cc8d
v1.2.3   lightweight                               84686519bfe3928447925505e8201e997c0ad0c1
v1.2.4   lightweight                               6c94d732ac31d45ca1f62731b1682157ce85e224
```

Swept for blobs over 100 MiB across the whole history before landing: **0**, and none over 1 MiB or
100 KiB either, so the sweep was calibrated at 10 KiB, which returns 31. The largest blob in the
history is 18.8 KiB.

