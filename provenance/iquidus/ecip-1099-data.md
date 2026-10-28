# `iquidus/ecip-1099-data`

The record of `https://github.com/iquidus/ecip-1099-data` in this archive, oldest first. Its folder
at `main`'s tip is `iquidus/ecip-1099-data/`. `PROVENANCE.md` keeps the introduction of the pass it
was vendored in: Ethereum Classic tooling and personal-account work, 2026-09-21.

## `iquidus/ecip-1099-data/`

| field | value |
|---|---|
| upstream | `https://github.com/iquidus/ecip-1099-data` |
| ref | `master` @ `2dfa18d8bf1378f8d71cfeec7036cfc168ae54f9` |
| upstream date | 2020-09-14 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 4 commits |
| contents | 4 files · 24 KiB |
| license | none published |
| tree | `92e71bfd14ad54f4b80ed1e3b4af3bc4e6dd04ba` |

The epoch-transition research behind ECIP-1099, by that proposal's author.

**Its `ETCHASH_FORK_BLOCK=11460000` is NOT an error, and must not be recorded as one.**
`MAINNET.md` was written 2020-09-14. core-geth defined the mainnet activation as
`11_700_000` on 2020-09-25, eleven days later, and `11460000` never appears in
core-geth's params at any point in its history. Both values are epoch-aligned under
both the old 30,000 and new 60,000 epoch lengths (11,460,000 = epoch 382 / 191;
11,700,000 = epoch 390 / 195); the difference is exactly 8 old epochs, roughly 38
days of additional lead time. This is a **superseded pre-decisional working value**,
recorded before the activation block was chosen, and it is preserved as published.
Read activation blocks from the production client, never from this file.

