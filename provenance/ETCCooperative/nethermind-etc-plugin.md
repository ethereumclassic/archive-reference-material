# `ETCCooperative/nethermind-etc-plugin`

The record of `https://github.com/ETCCooperative/nethermind-etc-plugin` in this archive, oldest
first. Its folder at `main`'s tip is `ETCCooperative/nethermind-etc-plugin/`. `PROVENANCE.md` keeps
the introduction of the pass it was vendored in: the ETC Cooperative's repositories, 2026-10-27.

## `ETCCooperative/nethermind-etc-plugin/`

| field | value |
|---|---|
| upstream | `https://github.com/ETCCooperative/nethermind-etc-plugin` |
| ref | `main` @ `aae9ff8012a6b2c6d5766efb1912c27a37d9dbe6` |
| upstream date | 2026-09-24 |
| vendored | 2026-10-27 |
| mechanism | `git subtree add`, **full history**, 62 commits |
| contents | 75 files · 1.1 MiB |
| license | see NOTICE |
| tree | `6998ef4e78175168ceef81b84c974906108f7949` |

The Ethereum Classic plugin for the Nethermind client, in its README's words a *"Plugin to add
Ethereum Classic (ETC) support to Nethermind"*, for ETC mainnet (chain ID 61) and Mordor (63). Its
tags follow the Nethermind version each release targets: `v1.39.3.0` is the commit "chore: update to
Nethermind 1.39.3".

**Taken at the merge of pull request #18**, `main`'s tip on 2026-09-24. It reaches all of the
2026-08-26 clone, whose `main` was `f7d71a321d` (2026-08-07), plus thirteen commits of 2026-09-23
and 2026-09-24, among them the port to Nethermind 2.0.0, released as `v2.0.0.0`. The branches
`force-seal-validation` and `remote-mining-self-trigger`, merged as #7 and #12, are its ancestors.

Tag map, read from the upstream at vendoring; the thirteen tags the clone held carry the same tag
objects there:

```
tag        tag object                                commit
v1.36.0.0  b3611b543fa4750d64735428d10bb1e01fdf4297  9d6b2a9d56e1b8da5209c3ca9c8781ef17dcdaed
v1.36.2.0  929d2a42363ceec7d01ec9b39a59d642a1c99c6f  fa9d0c9f00c495396f65fe42315628a0d060a5e3
v1.37.0.0  16b442a7d6caecf0ff12131fd8630a4c953aaaff  2f17e362b413a7dd4164a717c030904a82a29932
v1.37.1.0  1e00cca95ffef4b47451cb6207bb7cdd12c3c46a  960d7a594e7af5a7e9ce12fcf0a19e5444b86d77
v1.37.2.0  a53bbf0143aee638bcb4c62a8018d1f5fd967a9d  b7342dd5bc55dab5b7365dce66fc67f721af527a
v1.38.0.0  fed8bb317b643eea39f5feabc78e62096a676bc2  d9f15ed43bd1670212f6cecc254655f076f1f899
v1.38.1.0  lightweight                               4e43dd426286034cec945b9fe66148a18390044d
v1.38.1.1  lightweight                               bf27e22c95b35de5dabdf91c60b218ea14c35ff6
v1.39.0.0  lightweight                               de749ea9c323dfd0ff084fc95ad6ce94954706f5
v1.39.1.0  lightweight                               80a8bb6c335fc2aa18ac0b322a7e8f2fa38c3387
v1.39.1.1  fc40e463fec701e0afca76495a4eb131e11e8c78  f8921b57c05ba6b950b607eea7f191f94e4448c8
v1.39.2.0  lightweight                               7972d430bb6bc157088bb3f3647ca96f731fd6e8
v1.39.3.0  lightweight                               f7d71a321dd08aea505621a355fb2ceccdfadfa1
v2.0.0.0   ef7681be6d85f99e85f5944fac2312336e280aac  67afbb875fbec8b35da86cfbeadb491d71d6654f
```

**Not taken:** `e74fd79034` (2026-10-06), the next commit on `main` and the commit of `v2.1.0.0`,
which no merge places in the organization, nor anything after it. Nor are pull-request refs held:
pull requests #2, #4 and #11 were closed without merging, and their heads are not in this history.

```sh
git cat-file -t e74fd79034   # want: fatal: Not a valid object name e74fd79034
git cat-file -t aae9ff8012   # want: commit  <- the control
```

Swept for blobs over 100 MiB across the whole history before landing: **0**, and none over 1 MiB, so
the sweep was calibrated at 10 KiB, which returns 13. The largest blob in the history is
`chainspecs/classic.json` at 847.0 KiB.

