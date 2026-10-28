# `besu-eth/besu`

The record of `https://github.com/besu-eth/besu` in this archive, oldest first. Its folder at
`main`'s tip is `besu-eth/besu-etc/`. `PROVENANCE.md` keeps the introduction of the pass it was
vendored in: the Ethereum Classic client lineage, 2026-09-21.

## `besu-eth/besu-etc/`

| field | value |
|---|---|
| upstream | `https://github.com/besu-eth/besu` |
| ref | `main` @ `eb4248c997cb79cc88db55ead562081a43721a3b`, an ancestor of its tip |
| upstream date | 2026-02-09 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 6,443 commits |
| contents | 5,973 files · 61 MiB |

Besu's Ethereum Classic support. **The upstream is a fork organization, not Hyperledger** (`besu-eth/besu`), and the ETC material appears nowhere in `hyperledger/besu`. The org is active, so this is vendored against fork-org risk rather than dormancy. A third independent lineage: root `7dfc2e408`, sharing no commit with geth or Parity, and a third oracle for the difficulty rules. Its ETC surface is six files; a token search for `ecip1010` finds none of them, because the rule lives in `ClassicDifficultyCalculators`.


