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

## Every ref, kept 2026-10-28

**Every ref of `etclabscore/tests-etc` is held from this record on**, each commit unchanged
(`AGENTS.md`, "Layout"). The folder recorded above holds `isaac`, and four more refs are in its
history. The other four are held by history-only merges: `develop` and the heads of pull requests
#2, #5 and #7, which the record above gives as not taken. `develop` is one commit sharing no history
with `master`, so its merge was made with `--allow-unrelated-histories`.

**What they hold.** `develop`, one commit of 2022-09-14 by meows, whose files differ from `master`'s
commit of the same day only in the stamp naming the build that generated them; the heads of pull
requests #2 and #5, one commit each by Diego López León, closed without merging; and the head of
pull request #7, "Originalvectors adaptation WIP", two commits by Dimitry Kh, open on 2026-10-27.
Nothing in core-geth's history pins any of them (read 2026-10-28). Each merge's message says what its
ref holds.

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/tests-etc` |
| refs read | 2026-10-28, with `git ls-remote` |
| kept | 2026-10-28 |
| mechanism | `git merge -s ours --no-ff`, history only, 4 merges |
| commits added | 5 |
| contents at `main`'s tip | none: each merge's tree is its first parent's |
| license | see NOTICE |

Each commit was fetched by its hash from GitHub and confirmed against the upstream's own
`git ls-remote`, and each merge is checked by hash, as for `etclabscore/tests`. To list them:

```sh
git log --first-parent --format='%H%x09%(trailers:key=history-only-repository,valueonly,separator=)%x09%(trailers:key=history-only-ref,valueonly,separator=%x2C)' main \
  | awk -F'\t' '$2 == "etclabscore/tests-etc"'
```

### Every ref, by name and commit

Read with `git ls-remote https://github.com/etclabscore/tests-etc` on 2026-10-28, where `HEAD` points
at `master`. Left out: `refs/pull/7/merge`, the test merge GitHub generates for an open pull request,
which is not history.

| ref | commit | kept as |
|---|---|---|
| `refs/heads/develop` | `e507022b1cd9b4c54b6dfcc293dc2d94e0f3887c` | history-only merge |
| `refs/heads/isaac` | `8183e9eebd93912cebddbe3e88f66f836a8205dd` | folder `etclabscore/tests-etc/` |
| `refs/heads/master` | `7d1ea7e6a9012f94901fbc694eabbe4fac7641ee` | in the history of `etclabscore/tests-etc/` |
| `refs/pull/1/head` | `2db4595befc27e58e6dab591ee0360346637074d` | in the history of `etclabscore/tests-etc/` |
| `refs/pull/2/head` | `6ade3dfb1ff277b8f02c2e0a3e656b6d5072a721` | history-only merge |
| `refs/pull/3/head` | `4f96c48ba324de4ac1e72d4954f33ecab9660ad1` | in the history of `etclabscore/tests-etc/` |
| `refs/pull/4/head` | `eee0383834a6e32ff17690d6c4763fffd04fcaaa` | in the history of `etclabscore/tests-etc/` |
| `refs/pull/5/head` | `b8d9cbffed717951897ba89c5f55937e996efcb5` | history-only merge |
| `refs/pull/7/head` | `f8870fff6f158651e689503ac39dfab9a618b45e` | history-only merge |

Swept for blobs over 100 MiB across the whole history of these refs before landing: **0**, with the
sweep calibrated at 1 MiB, which returns 113. The largest blob in those histories is 20.0 MiB,
`src/TransactionTestsFiller/ttData/String10MbDataNotEnoughGASFiller.json`, already held here. The
largest they add is 4.4 MiB, `GeneralStateTests/stStackTests/stackOverflowPUSH.json`.
