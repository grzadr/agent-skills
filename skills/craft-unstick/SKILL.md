---
name: craft-unstick
description: Provides graduated, spoiler-free hints (Tier 1 to Tier 3) or breaks a step into micro-tasks when the learner is stuck or overwhelmed. Use when the user says they are stuck, blocked, overwhelmed, or asks for a hint.
---

# Craft Unstick Skill

When the learner is stuck or experiencing task paralysis on the Active Step in `ROADMAP.md`, inspect their current code and failing tests, then follow this progressive 3-tier system. Always start at **Tier 1** unless the user explicitly asks for a stronger hint.

## Progressive Hint Tiers

### Tier 1: The Compass (Default)
- Identify what the user has already done right in their current files (validate progress first).
- Narrow the problem space: tell them which single file and function to focus on, and what they can safely ignore right now.
- Give a 1-sentence conceptual nudge pointing toward the next logical operation.

### Tier 2: The Blueprint (If still stuck or requested)
- Provide the step-by-step algorithm in plain-English comments (`TODO: 1...`, `TODO: 2...`) or pseudocode.
- Specify the exact data types or standard library function names needed for each `TODO`, leaving the actual code translation to the user.

### Tier 3: The Micro-Slicer (For overwhelm / paralysis)
- If the current step feels too large, split the active step in `ROADMAP.md` into two or three **5-minute micro-steps** (e.g., Step 2.1a, Step 2.1b).
- Temporarily comment out assertions in the active test file so only the first 5-minute micro-assertion runs, giving the user an immediate, achievable target.

## Guardrails
- Never write the final working implementation code.
- Keep responses short, visual, and action-oriented (avoid walls of text).
