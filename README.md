# Agent-Kit: CodeCrafters-Style Learning Skills & Rules

A cross-platform toolkit of skills, Socratic subagents, and strict no-spoiler rules for **Google Antigravity**, **Claude Code**, and **GitHub Copilot**. Built for high-focus, dopamine-driven deliberate practice.

## Included Skills (`skills/`)

| Slash Command | Purpose |
|---|---|
| `/craft-blueprint` | Generates `ROADMAP.md` with progressive stages, 15-30 min micro-steps, and black-box acceptance criteria. |
| `/craft-bootstrap` | Scaffolds a minimal build manifest and test runner with zero business logic. |
| `/craft-gatekeeper` | Generates tests for the active step only, runs the test suite, and unlocks the next step on green. |
| `/craft-tutor` | Explains language features and errors using Socratic questions and orthogonal examples (zero spoilers). |
| `/craft-unstick` | Provides 3 tiers of progressive hints or splits a step into 5-minute micro-slices when stuck. |
| `/craft-resume` | Restores mental context in 30 seconds after a break (`ROADMAP.md` + `git diff` + next 2-minute action). |
| `/craft-refactor` | Reviews working code *after* tests pass to teach idiomatic language patterns. |

## Quickstart Installation

### Option 1: Symlink CLI & Global Skills (Recommended)
Install the `agent-kit` CLI into `~/.local/bin` and link global skills/agents into `~/.gemini/config` and `~/.claude`:

```bash
make global
```

### Option 2: Native Plugin Installation (Google Antigravity)
```bash
agy plugin install ./
```

## Validating Skills, Rules & Subagents

Run the built-in schema and YAML frontmatter linter at any time:

```bash
make lint
```

To enforce validation automatically before every commit:

```bash
make install-hooks
```

## Starting a Learning Project

1. **Spin up a new learning kata sandbox:**
   ```bash
   agent-kit new-kata ~/learning/todo-cli
   ```
   *(Or run `agent-kit learn .` inside any existing repository.)*

2. **Launch your coding assistant and generate your roadmap:**
   ```text
   /craft-blueprint Build a CLI ToDo app in Go
   ```

3. **Follow the Red -> Solve -> Green loop:**
   - `/craft-bootstrap` to initialize the project skeleton.
   - `/craft-gatekeeper` to generate the failing test for Step 1.1.
   - `/craft-tutor` or `/craft-unstick` whenever you have questions or hit a wall.
   - `/craft-gatekeeper` to verify your solution and advance to Step 1.2.
   - `/craft-refactor` to learn idiomatic improvements once tests are green.

## Exiting Learning Mode
- In chat: Include `SPOILER OVERRIDE` (single turn) or `EXIT LEARNING MODE` in your prompt.
- In a repository: Run `agent-kit eject .` to remove all Learning Mode symlinks.
