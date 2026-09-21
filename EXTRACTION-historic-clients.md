# Historic Ethereum Classic clients: where each was frozen, and the one held as an extraction

> **Two of the three clients below are held WHOLE, with history:** `multi-geth/multi-geth` and
> `openethereum/parity-ethereum`, each at the ref this document names. **Only
> `openethereum/openethereum` is held as an extraction**, a named subset of files, and this
> document is the record of what it holds and why.
>
> **The freeze-point reasoning below applies to all three**, and it is the part worth reading: a
> client's default branch is not its ETC-supporting state, and the OpenEthereum ref had to be a
> release tag rather than a HEAD or a pre-removal commit.

Three clients that supported Ethereum Classic and are now dead. What matters in each is its
**Ethereum Classic-specific material**: chain specifications for the ETC family, and the source
implementing this chain's own proposals. The OpenEthereum extraction holds exactly that and nothing
more; the rest of that repository is general Ethereum client code, available elsewhere and not at
risk.

**Each is frozen at the last point it still supported Ethereum Classic**, not at its final
commit. These clients carried this chain until the Phoenix upgrade, then dropped it, then shut
down, so a repository's final state is the state *after* the support was removed.

| source | frozen at | why that ref | held as |
|---|---|---|---|
| `multi-geth/multi-geth` | `38865665e` (HEAD) | the repository ended while still carrying this chain | whole, with history |
| `openethereum/openethereum` | **`8ca8089e9`, tag `v3.0.1`** | the last release supporting this chain, Phoenix included | **extraction**, five files |
| `openethereum/parity-ethereum` | `55c90d401` (HEAD) | the repository ended while still carrying this chain | whole, with history |

The OpenEthereum extraction was taken on 2026-08-21 and is held here byte for byte: each of its five
files equals the blob upstream serves at tag `v3.0.1`, checked 2026-09-21.

**A reference client's default branch is not its ETC-supporting state.** Two of these removed
this chain before they shut down, so their default branches carry no trace of it. Checking one
out there returns an absence that reads like an answer.

### The OpenEthereum ref is not its HEAD

Its default branch has no specification for this chain at all: a commit deleted it two years
before that repository's final commit. And the obvious correction, taking the commit immediately
before the removal, reaches only Agharta: the Phoenix activation is not an ancestor of the
removal, because the project reorganized and the lineage that dropped this chain forked from
before Phoenix was enabled. Only the release tag carries both.

**Choosing a freeze point by date rather than by content silently preserves a specification one
upgrade short.**

The general form of the trap: a release branch cherry-picks, so asking what a ref *descends from*
answers differently than asking what it *contains*. Read the content at a candidate ref before
choosing it.

## Why these matter more than their age suggests

**They are independent implementations of the upgrades no current generator can address.**

Ethereum Classic's Die Hard, Gotham and Defuse Difficulty Bomb have no fork name in the
production client's test tables, so no fixture can be generated for them today. The rules
themselves are implemented, but in one client, in one language.

Parity implemented the same rules in Rust, independently, and its chain specification agrees with
the production client on every activation point. Verified 2026-08-21:

| rule | Parity | production client |
|---|---|---|
| Die Hard's replay protection and its companion | agree | agree |
| Die Hard's difficulty-pause start | agree | agree |
| the pause window's end | agree, stated as an end block | agree, stated as a start plus a length |
| Gotham's era length | agree | agree |
| Defuse's bomb removal | agree | agree |
| Atlantis's state-clearing rules | agree | agree |

Two implementations, two languages, two teams, arriving at the same schedule. **That is a second
oracle for the upgrades that currently have none**, and it is the strongest evidence available
for them, because the living client is otherwise alone.

The pause window is the sharpest of these. One implementation states it as a start and an end;
the other as a start and a duration. They describe the same window, which is agreement that
survives a difference in how the rule is expressed.

## What is deliberately absent

**Everything after Phoenix.** These clients supported this chain up to that upgrade and no
further, so Thanos, Magneto, Mystique and Spiral appear in none of them. Their authority as a
second opinion therefore **stops at Phoenix**. Beyond it they are silent, not wrong, and citing
them for a later upgrade would be citing an absence.

**Everything in the extraction that is not specific to this chain.** No consensus engine beyond
the parts implementing these proposals, no networking, no database layer. Those are Ethereum's and
survive elsewhere.

## Frozen, like everything in this repository

Not maintained, not corrected, not reorganized. If one of these specifications turns out to
disagree with the production client, that disagreement is a finding to record in whatever suite
relies on it, not an edit to make here.
