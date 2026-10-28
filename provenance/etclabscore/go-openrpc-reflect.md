# `etclabscore/go-openrpc-reflect`

The record of `https://github.com/etclabscore/go-openrpc-reflect` in this archive, oldest first. Its
folder at `main`'s tip is `etclabscore/go-openrpc-reflect/`. `PROVENANCE.md` keeps the introduction
of the pass it was vendored in: the Go modules the production client builds against, 2026-09-21.

## `etclabscore/go-openrpc-reflect/`

| field | value |
|---|---|
| upstream | `https://github.com/etclabscore/go-openrpc-reflect` |
| ref | `master` @ `5153c9e1211fd210176b7f7df3baac7e302a576f` |
| upstream date | 2023-12-07 |
| vendored | 2026-09-21 |
| mechanism | `git subtree add`, **full history**, 110 commits |
| contents | 23 files · 0.3 MiB |
| license | see NOTICE |
| tree | `960b6b5f5ccc3179e37875388f96980865425b3b` |
| module | `github.com/etclabscore/go-openrpc-reflect` |
| consumed by | `ethereumclassic/core-geth`, as a direct requirement |
| pinned version | `v0.0.37` @ `ba5a99fa846de681b412765a38a3fb11b0016208` (2022-08-29) |
| pinned tree | `3bb1459adc04ef27a848ce94c4b33df4abc954b1` |
| `h1:` module zip | `h1:IH0e7JqIvR9OhbbFWi/BHIkXrqbR3Zyia3RJ733eT6c=` |
| `h1:` go.mod | `h1:0404Ky3igAasAOpyj1eESjstTyneBAIk5PgJFbK4s5E=` |
| tags | 36, all annotated, 22 of them PGP-signed |

Generates OpenRPC service descriptions from Go code by reflection. `ethereumclassic/core-geth`
imports it in `node/` for RPC discovery.

**`master` is one commit past the pinned version**, and that commit touches `go.mod` and `go.sum`
only: the `go` directive rises from 1.13 to 1.21, and the indirect requirements are listed in full in a
block of their own, with no direct requirement changing version. **Read `ba5a99fa8` for what the
client builds, not the vendored tree.**

Upstream carries no `v0.0.28`; its tags skip from `v0.0.27` to `v0.0.29`. Its one branch besides
`master`, `fix-m1-nil-pointer`, is merged, and `v0.0.37` is the first tag that contains it. That tag's
message reads *"fix for Apple Silicon M1 bug"*.

Tag map, read from the upstream at vendoring (`*` marks a PGP-signed tag object):

```
tag        tag object                                commit
v0.0.1     155b97f9d160e57197782c9817b2c293252cac49  d4e921e4fc0dba934a1ff57c03a7e339f7d29cff
v0.0.2     203722a50f71f99db8be4843d3f1642b4d76a87a  0442a0df4b46cfc81643b26325ee804e2a19ad88
v0.0.3     8b8c8498615695f06fbf27a358006d026376f12d  98aa65a6590e29ddc38739f946581a3e1ddd7102
v0.0.4     b7256e621b35d91decdc713512591745116dcb92  f79951fa4ede547092bc04ca60dc9f666eee0b2a
v0.0.5     2b6060ab54366290625b3c53bee3ead40ca79dfd  781d005f63c2fe1e4175588d03fb4145a40863ae
v0.0.6     20ac447144794ec61833f69a028086a3a17a0bc3  565f7f5ae08ddc38e2fc6ff057f293da509ec671
v0.0.7     e37eb9b2540b6ba2411e6c6a9e792403f77411f8  d312831cd6b977439a720d9c99a3ae97ccceaa0e
v0.0.8     bb91e7b9f370a6c1a69e350ae651b3d5a60b0dfd  4dd8a28ee6922dfb525375e330d0be881fa67e3f
v0.0.9     bcd097fee13473e05428272996eca5ef32c83fab  9923f411ee2317f4eed1ef7f64d5830e22d104a6
v0.0.10    f3cf77f93176c968f3cf577322092c4e6f4a2f0b  fe05665df368f33c52e3f8a97a4744db65348c64
v0.0.11    75465d163e5eaf1467bc10de5740011e6c299453  d756b3addce39516a4f9ed4296d5f15eccb42db4
v0.0.12    21c388862522bd9bd96011325d9fd479d1ff18d3  54fe81af14257c56d63143ef773d95921989dbd9
v0.0.13  * 9df56f95ef4da4ae642991b3aa37239acfa6815e  51bbfbfc276c53ac108d9a49e637ba2c1151e83a
v0.0.14  * f6bbda11871a80c6f0b011f73f19be2da4f0bcb0  ba55a7f19357b692b6b9c0634f9da6e27a85cd78
v0.0.15  * a56a590a254f66726ed06485e434cc3b617fcefb  e2005eefd0564c8c5433547cb785feecc9ec2e95
v0.0.16  * a64d25e0dfb3796ea11c26b38c0b0a0dc9e46a56  ae07309e07771ed2b8bca1d5b06ab0d9615ece45
v0.0.17  * c0c987162dd343a62f1d1a8e0bda5ab374bf63b8  f178289152afdd1207abffa4a768dcd68b25c546
v0.0.18  * cdbff3e85f3c907717e7da55593eccb07c1e2b93  ae79e37c91027ec73870cae1c18567b9a5b4e5ca
v0.0.19  * 8ed694e8e240f9f8894cf6c844fe9f263e4b56ec  92e27e930851ee14ab14dd16264188d880654e4a
v0.0.20  * c5eb15a5af5ff031d0dbb693124b534ea9befaf1  595c1860eea1dba537f14269731ddac9372abd0e
v0.0.21  * 27eb3d3fae6198ea583643a74393829f5469d08b  018e9422fcc4a398773baaa51db9edc51b4f3548
v0.0.22  * 461b3845ad7e6e37bbfea36821859d89ed063e09  585618201f264a06b03dbf8e8d57985f32854df7
v0.0.23  * dced68b1f697e5df60162a133402f18536ecd854  ed44570bab704cfb4f67a8792d10b3467540ed59
v0.0.24  * 9542cc699c97a017d76d1f54ac3ad3e388a9852a  22ddd49d4946c99c45ff93f52f5d9ed7d5d97ff3
v0.0.25  * fbe55499c8cd56c3a8ea1736e8d308d06fb106d3  b5a4c5da94aa8f1519704278902b4e963ce1b090
v0.0.26  * 290a9326e15ff54419517ed818d0b0d079f37ec0  de01133fcfafc9d7e52cac824bdd5b610c228a81
v0.0.27  * fa623e5e300ad5b3a64ae4f0d3a13eb44cba7efe  ab2d0c6280362a44237beb701e6d0683e5894154
v0.0.29    64cecd9d672cbf4b87165bbc16c7e634121d2ad6  b13f86fd5a4d28f3b7e8e1b24f12fff81dd1332c
v0.0.30    daac171eb78285fbbfb76f02c43263a3661384fe  5e157e718d07e9a72006bf6b4fb44ae5eaf8baf0
v0.0.31  * a81e2775604dfee647e57448ee27bce0d82ddc94  7eb5a3cc5cc8adfc503b07bf291d3c000f24e95e
v0.0.32  * b051bfe604011df3e878d32bbafc016c26f5ca68  cbb87cc95eb33c78e8b23343ea0a0d82b8b49bf9
v0.0.33  * 98790705ac607301687cf671766e6358f5db26b8  af2631fe1ed6f81b1424a687cea4aaaa655c2be5
v0.0.34  * f95892dbe8423343961637680db8047b8876a92c  d5606e185eb56fe64d3b1e64c91612c193322337
v0.0.35  * 64b5c626bd1fc597ee756f0656bfe7be2b4fbb76  6cd4c3631ce85d3afada7c1e4919648bbc32acee
v0.0.36  * 0bb9a4c93b492ea850495c5862b967479902aacb  d9d1355d9d4d9957b08ae95e644021b474820e8c
v0.0.37  * 03c29bcebfa77f18bada9668d90e0511cedf10c5  ba5a99fa846de681b412765a38a3fb11b0016208
```

Swept for blobs over 100 MiB across the whole history before landing: **0**. The sweep was calibrated
at 1 MiB first, which returns 1: `test.out`, 2.1 MiB, the largest blob in the history.

