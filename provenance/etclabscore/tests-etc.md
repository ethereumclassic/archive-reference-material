# `etclabscore/tests-etc`

The record of `https://github.com/etclabscore/tests-etc` in this archive, oldest first. Its folder
at `main`'s tip is `etclabscore/tests-etc/`.

# The fixture repository core-geth pinned in 2022 — vendored 2026-10-27

**One repository, whole, with history, added after the initial build.** From 2022-09-14 to
2022-12-09, core-geth's fixture submodule, `tests/testdata-etc`, pointed at `etclabscore/tests-etc`;
it then moved to `etclabscore/tests` and kept the name `tests-etc`, which it carries still. Eight
commits of core-geth's history pin commits of `etclabscore/tests-etc`, so the copy of that history
held here, under `etclabscore/core-geth/`, carried eight pins that did not resolve here until this
entry. No release pinned it: `v1.12.8` predates the submodule, and `v1.12.9` already pins
`etclabscore/tests`.

## `etclabscore/tests-etc/`

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/tests-etc` |
| ref | `isaac` @ `8183e9eebd93912cebddbe3e88f66f836a8205dd` |
| upstream date | 2022-10-28 |
| vendored | 2026-10-27 |
| mechanism | `git subtree add`, **full history**, 14 commits |
| contents | 5,011 files · 5,011 json · 95 MiB |
| license | none published |
| tree | `5fa7094e4d271169c72ddd32759ce972d1820f23` |

**Taken at `isaac`, not at the default branch.** `master`, the default, is an ancestor of `isaac`,
which adds two commits: a regeneration of the state tests with a later core-geth build, and a merge
of `master`. core-geth's last pin into it is `isaac`'s tip, so taking `master` would leave that pin
unresolved. All eight resolve from `main`:

```sh
printf '%s\n' c28fc7e6e8 e0467d24a4 2ff4c12e8e 4f96c48ba3 46ec3ab7a0 5609a9c904 eee0383834 8183e9eebd \
  | git cat-file --batch-check    # want: eight lines, each of type commit
```

**What it holds.** Fixtures core-geth generated for Ethereum Classic in September and October 2022,
from `ethereum/tests` v10.4 by their commit messages: `BasicTests`, `GeneralStateTests` and
`LegacyTests`, and `DifficultyTests/dfETC`, difficulty test vectors for five Ethereum Classic forks
(Atlantis, Agharta, Phoenix, Magneto, Mystique), whose files no other entry here holds. Every file is
JSON.

**Not taken: `develop`.** One commit of 2022-09-14, `e507022b1cd9b4c54b6dfcc293dc2d94e0f3887c`,
sharing no history with `master` and never pinned by core-geth. Its 5,006 files are exactly the paths
of `master`'s commit of the same day, `e0467d24a471d9ae5eb459271a3f20b950e00a41`; 4,988 of them differ
from it in one line only, the `filledWith` value naming the build that generated them, and the rest
are identical. **Pull-request refs are not held**: on 2026-10-27, three pull-request heads pointed at
commits outside `isaac`'s history, #2 and #5, closed without merging, and #7, open.

**Not `etclabscore/tests`.** That entry was imported from a local checkout named `tests-etc`. The
two are different repositories, and that entry's history holds none of `etclabscore/tests-etc`'s
commits.

Swept for blobs over 100 MiB across the whole history before landing: **0**, with the sweep
calibrated at 1 MiB, which returns 107. The largest blob in the history is 5.3 MiB.

