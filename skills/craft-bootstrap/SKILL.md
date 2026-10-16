---
name: craft-bootstrap
description: Scaffolds a minimal, zero-boilerplate project structure and test runner configuration for any programming language without writing business logic. Use right after generating ROADMAP.md to initialize the environment.
---

# Craft Bootstrap Skill

Your job is to eliminate setup friction so the learner can start coding logic immediately.

## Protocol
1. Read `ROADMAP.md` to identify the target language and project type.
2. Initialize the minimal native package/build manifest (e.g., `go.mod`, `Cargo.toml`, `pyproject.toml`, `package.json`, `CMakeLists.txt`, `build.zig`, or `Makefile`).
3. Create a minimal placeholder entrypoint (e.g., `main` or empty module) and a dummy sanity-check test file.
4. Verify that the build and test commands execute cleanly in the terminal.
5. Output a **Quickstart Card** containing only 2 commands:
   - How to build/run the project.
   - How to run the tests.

## Guardrails
- Install zero external third-party libraries unless explicitly requested by the user; strongly prefer the language's standard library for learning projects.
- Do NOT implement Stage 1 Step 1.1 logic during bootstrap—leave the implementation empty for the learner.
