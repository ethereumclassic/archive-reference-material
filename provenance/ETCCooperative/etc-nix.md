# `ETCCooperative/etc-nix`

The record of `https://github.com/ETCCooperative/etc-nix` in this archive, oldest first. Its folders
at `main`'s tip are `ETCCooperative/etc-nix/` and
`ETCCooperative/etc-nix-coregeth-src-proxyvendor/`. `PROVENANCE.md` keeps the introduction of the
pass it was vendored in: the ETC Cooperative's repositories, 2026-10-27.

## `ETCCooperative/etc-nix/`

| field | value |
|---|---|
| upstream | `https://github.com/ETCCooperative/etc-nix` |
| ref | `main` @ `5e6a3e52669c28bc47944e0956f64734082e65f8` |
| upstream date | 2026-09-17 |
| vendored | 2026-10-27 |
| mechanism | `git subtree add`, **full history**, 8 commits |
| contents | 62 files · 0.4 MiB |
| license | none published |
| tree | `838901779f753154ecba8f18da80d0e5422fa3eb` |

In its README's words, *"Reusable Nix builds of the Ethereum Classic clients (core-geth, getc,
Nethermind, Besu) plus two experiment factories"*: a consensus-replay machine and a private devnet.

**Taken at the commit pull request #5 was merged as**, on 2026-09-17. It reaches the organization's
`main` of 2026-07-26, `b055c94965`, which the 2026-08-26 clone held, and the merges of #2 to #4.

**This history is reachable from no upstream ref.** Upstream's `main` has since been replaced by a
parentless commit, `013f0ab457`, dated 2026-09-25, whose tree differs from this entry's in ten lines,
each giving the repository's address as `classix-dev` where this one gives `ETCCooperative`. So
`git ls-remote` cannot confirm this commit; GitHub's own record of pull request #5 names it as that
merge's commit, and on 2026-10-27 GitHub still served it by hash. Upstream can prune unreferenced
objects at any time.

```sh
git cat-file -t 013f0ab457   # want: fatal: Not a valid object name 013f0ab457
git cat-file -t 5e6a3e5266   # want: commit  <- the control
```

**Not taken:** `7331b77b66`, pull request #5's head, which the merge rebased, and the replacement
history. Pull request #1's branch is the next entry.

Swept for blobs over 100 MiB across the whole history before landing: **0**, and none over 100 KiB,
so the sweep was calibrated at 10 KiB, which returns 9. The largest blob in the history is
`pkgs/eth-netstats/package-lock.json` at 73.2 KiB.

## `ETCCooperative/etc-nix-coregeth-src-proxyvendor/`

| field | value |
|---|---|
| upstream | `https://github.com/ETCCooperative/etc-nix` |
| ref | `coregeth-src-proxyvendor` @ `687356afdd230cc07d4b81a3045580caf37aee81` |
| upstream date | 2026-08-14 |
| vendored | 2026-10-27 |
| mechanism | `git subtree add`, **full history**, 2 commits |
| contents | 62 files · 0.4 MiB |
| license | none published |
| tree | `ce82b8e07a43ce12f5510051eed3f94883bc970e` |

**A second ref of `ETCCooperative/etc-nix`, for the one commit of the 2026-08-26 clone that the
entry above does not reach.** `coregeth-src-proxyvendor` is one commit past the organization's `main`
of 2026-07-26. It was opened as pull request #1 and closed without merging on 2026-09-17, the minute
pull request #2 merged; the organization's last `main`, above, differs from it in five files. Its
parent is in the entry above, so it adds one commit, while the tree at this prefix is a second copy
of the repository at another state. Upstream still serves it, as the head of pull request #1.

Swept for blobs over 100 MiB across the whole history before landing: **0**, and none over 100 KiB,
so the sweep was calibrated at 10 KiB, which returns 9. The largest blob in the history is
`pkgs/eth-netstats/package-lock.json` at 73.2 KiB.
