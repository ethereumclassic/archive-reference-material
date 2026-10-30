# `etclabscore/go-jsonschema-walk`

The record of `https://github.com/etclabscore/go-jsonschema-walk` in this archive, oldest first. Its
folder at `main`'s tip is `etclabscore/go-jsonschema-walk/`. `PROVENANCE.md` keeps the introduction
of the pass it was vendored in: the Go modules the production client builds against, 2026-09-21.

## `etclabscore/go-jsonschema-walk/`

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/go-jsonschema-walk` |
| ref | `master` @ `a18d63d40990c8540b2f0cbc9a422809a23c16e8` |
| upstream date | 2020-05-08 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 22 commits |
| contents | 7 files · 30 KiB |
| license | see NOTICE; **none** at the pinned version |
| tree | `3874744d1e146d51506b446df0480343cea99970` |
| module | `github.com/etclabscore/go-jsonschema-walk` |
| consumed by | `ethereumclassic/core-geth`, as an indirect requirement through `go-openrpc-reflect` `v0.0.37` |
| pinned version | `v0.0.6` @ `44dea48ac8a4a2b28bde66e6409ceb52535ba432` (2020-05-01) |
| pinned tree | `3d460fb7e690935c3e60cfadedbcaac1c607f2b1` |
| `h1:` module zip | `h1:DrNzoKWKd8f8XB5nFGBY00IcjakRE22OTI12k+2LkyY=` |
| `h1:` go.mod | `h1:VdfDY72AFAiUhy0ZXEaWSpveGjMT5JcDIm903NGqFwQ=` |
| tags | 6, all annotated, 2 of them PGP-signed |

A depth-first walk over a JSON Schema that calls back once for each subschema, with cycle detection.

**`master` is four commits past the pinned version, all dated 2020-05-08:** doc comments in
`walk.go`, a README, a CI workflow, and last, `LICENSE.md`. **So the version the client resolves
carries no license file.** The tree at `v0.0.6` is four files, `go.mod`, `go.sum`, `walk.go` and
`walk_test.go`, and none of them states a license or a copyright; the same search at `master` finds
`LICENSE.md`, so the search can see one. Recorded as published, not corrected.

Its two branches besides `master`, `error-handling` and `feat/better`, are both merged.

Tag map, read from the upstream at vendoring (`*` marks a PGP-signed tag object):

```
tag        tag object                                commit
v0.0.1     be2befe0e36ad3f147ddd3fcfc779152e1387112  4657eaef284a2dce99b35d4fa4c442fe826d6263
v0.0.2     3c21237b8319f80aa1e1548e1d48cb38ad7baa31  894a6c1112379f391da401de05bee6cf95227706
v0.0.3     ebee8c43e86fe5142c5bcf8d4e2b3392eae1e272  bfee6debcf3272f40f4b9a6146084909ae21285f
v0.0.4     a4ca1f527d9743e7f89ab57728e0adf48cfc81d6  db082bb2d851277c492f690f206758eb4e8e2706
v0.0.5   * fc1599064e8744b6efaa0aa6ff2675b9a5b54f9d  f6b3ce23f0ded153c96bfa09b84d501b26b9995c
v0.0.6   * 610ef2dbfb72da7424863ade253192d0f69d1a37  44dea48ac8a4a2b28bde66e6409ceb52535ba432
```

Swept for blobs over 100 MiB across the whole history before landing: **0**, and none over 1 MiB or
100 KiB either, so the sweep was calibrated at 10 KiB, which returns 8. The largest blob in the
history is 16.9 KiB.

## A branch for `ethereumclassic/core-geth`, added 2026-10-30

`dep-etclabscore-go-jsonschema-walk-44dea48ac8a4` points at
`44dea48ac8a4a2b28bde66e6409ceb52535ba432`, the pinned version above, so that
`ethereumclassic/core-geth` fetches the module from this repository at
`v0.0.0-20200501124244-44dea48ac8a4`, taking that commit's files alone. The commit was already in
`main`'s history. Its files reproduce both `h1:` values above, read from the checksum database on the
same day. `AGENTS.md`, "Branches that serve a client", says why a branch and what may not happen to it.
