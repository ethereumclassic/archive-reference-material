# `openethereum/parity-ethereum`

The record of `https://github.com/openethereum/parity-ethereum` in this archive, oldest first. Its
folders at `main`'s tip are `openethereum/parity-ethereum/` and `openethereum/parity-ethereum-dao/`.
`PROVENANCE.md` keeps the introduction of the pass it was vendored in: the Ethereum Classic client
lineage, 2026-09-21.

## `openethereum/parity-ethereum/`

| field | value |
|---|---|
| upstream | `https://github.com/openethereum/parity-ethereum` |
| ref | `v2.7.2-stable` @ `55c90d4016505317034e3e98f699af07f5404b63` |
| upstream date | 2020-02-05 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 12,342 commits |
| contents | 1,029 files · 13 MiB |

Parity at its last Ethereum Classic-supporting state. **The repository is archived on GitHub** (2020-11-01).


## `openethereum/parity-ethereum-dao/`

| field | value |
|---|---|
| upstream | `https://github.com/openethereum/parity-ethereum` |
| ref | tag `v1.2.2` @ `2cf4549d0181ad1d60fbd3bbe132b599a14a8965` |
| upstream date | 2016-07-16 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 4,749 commits |
| contents | 538 files · 4.3 MiB |

The same repository at the DAO fork, published upstream as tag `v1.2.2`; the `-dao` suffix is
this archive's prefix, not a repository name. **This ref is not an ancestor of the one above**: they share root `f7b618cec` and diverge, so vendoring one does not preserve the other. It is the source of `frontier-dogmatic.json`, which sits beside `frontier.json` differing only by the removed `daoHardfork*` block: the declining chain expressed as a config diff.


