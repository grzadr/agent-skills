---
name: craft-blueprint
description: Generates a CodeCrafters-style learning roadmap (ROADMAP.md) with progressive stages, bite-sized steps, and testable acceptance criteria for any programming language. Use when starting a new learning project or designing a project curriculum.
---

# Craft Blueprint Skill

When asked to design or initialize a learning project, generate a structured `ROADMAP.md` file in the workspace root. Do NOT write any application or implementation code.

## Core Design Principles
1. **Micro-Sprints (Dopamine-Driven Pacing)**: Every step must be completable in 15 to 30 minutes of focused coding. If a feature takes longer, split it into sub-steps.
2. **Vertical Slices Over Horizontal Layers**: Never create a stage that is "Write all data models" followed by "Write all database queries." Instead, Stage 1 Step 1.1 should take a single input and produce a visible, testable output immediately.
3. **Language Agnosticism**: Frame specifications around observable behavior (inputs, outputs, state changes, exit codes, return values, or API responses) rather than language-specific boilerplate.

## Protocol

### 1. Clarify Minimal Context (Only if missing)
If the user has not specified:
- **Target Project** (e.g., ToDo App, BitTorrent client, Key-Value store, HTTP server)
- **Target Language / Runtime** (e.g., Go, Rust, Python, TypeScript, C, Zig)
- **Interface Type** (e.g., CLI, HTTP API, TUI, Library)

Ask at most 2 brief questions to lock these down before generating `ROADMAP.md`.

### 2. Generate `ROADMAP.md`
Create `ROADMAP.md` using the following structure:

- **Project Overview**: A 2-sentence summary of what is being built and the core language concepts the learner will practice (e.g., memory management, concurrency, structs/interfaces, async I/O, error handling).
- **Progress Tracker**:
  - Current Stage & Step pointer (e.g., `Active Step: Stage 1 - Step 1.1`)
  - Status legend: `[ ]` Locked/Pending, `[~]` In Progress, `[x]` Passed
- **Stages (4 to 6 Stages total)**:
  - **Stage 1: The Heartbeat (Walking Skeleton)**: Getting the simplest possible end-to-end command or function working.
  - **Stage 2: Core State & Happy Path**: Implementing primary data structures and core operations in memory.
  - **Stage 3: Persistence / I/O & Edge Cases**: Saving state, parsing complex inputs, and graceful error handling.
  - **Stage 4: Advanced Language Features**: Introducing concurrency, streaming, middleware, or performance optimization.
- **Steps (2 to 4 Steps per Stage)**:
  For every Step, include:
  - **Goal**: One sentence describing what the user will build.
  - **Language Concepts Practiced**: 2 to 3 specific language features needed for this step.
  - **Specification & Acceptance Criteria**: Concrete, black-box testable behaviors (exact function signatures, CLI arguments, expected stdout/stderr, or HTTP status/payloads) that `craft-gatekeeper` will use to write automated tests.

## Guardrails
- **NEVER** generate source code files or solution snippets when running this skill.
- End your response by pointing the user to Stage 1, Step 1.1 and suggesting they run `/craft-bootstrap` (to set up the empty project skeleton) or `/craft-gatekeeper` (to generate the first failing test).
