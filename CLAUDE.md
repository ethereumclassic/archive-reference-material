@AGENTS.md

# Claude Code notes

`AGENTS.md` above is the project context and is imported, not summarized. What
follows is Claude-specific and adds to it; where the two could be read as
disagreeing, `AGENTS.md` wins.

## Before acting

- **Nothing here is built or run.** An entry is an upstream history merged under
  its prefix; the work is fetching, checking and merging, and a task that ends in
  "now build it" or "now fix it" has misread where it is.
- **An import is proposed before it is performed.** If a task seems to call for
  adding material in bulk, stop and assess the source first; `AGENTS.md` says why.
- **Read vendored material narrowly.** The tree runs to gigabytes and single
  fixtures reach tens of megabytes. Search with `git grep` and read what it finds,
  rather than opening whole files.

## Claude Code settings

`.claude/settings.json` is an accident guard for this repository's boundaries, not
a security boundary.

- **What it guards.** It asks before the git commands that change refs, history or
  the working tree, and before `gh api` and `gh release`. It denies pushing tags,
  mirroring, deleting a remote ref, force-pushing, and editing the root license
  files or a workflow, and it denies reading secret-shaped files.
- **It has no allow list, deliberately.** Read-only forms of git already run
  without a prompt through Claude Code's built-in set, and a `*` allow rule would
  also match write and exec flags such as `git log --output=<file>` or
  `git grep -O<program>`.
- **Its limits.** A rule matches the command as Claude usually writes it, so
  `git -C . push`, or a git command inside a script run with `bash`, is not matched.
  The file loads only in sessions started at this repository's root. What holds
  for every client is a server-side ruleset; read the current ones with
  `gh api repos/ethereumclassic/archive-reference-material/rulesets`.

## Machine-local context

`.local/` is this repository's private working directory and is ignored: plans,
prompts, scratch scripts and working notes live there and never reach a clone.
Machine-specific instructions belong in `CLAUDE.local.md`, also ignored. Confirm
either is actually ignored before writing to it, by effect:

```bash
git -c core.excludesFile=/dev/null check-ignore --no-index -q -- CLAUDE.local.md && echo ignored || echo "NOT ignored"
git -c core.excludesFile=/dev/null check-ignore --no-index -q -- README.md && echo "check is broken" || echo "check discriminates"
```

The second line is the calibration. A check that cannot report "not ignored" is
not checking anything, and its all-clear means nothing.
