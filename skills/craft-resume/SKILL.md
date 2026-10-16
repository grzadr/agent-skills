---
name: craft-resume
description: Restores mental context when returning to a learning project after a break by summarizing progress, current git diff, failing tests, and the immediate next micro-action. Use when resuming a coding session or asking "where was I?".
---

# Craft Resume Skill

When the user returns to a project, reconstruct their workspace state so they can re-enter flow state in under 30 seconds without reading through old files.

## Protocol
1. Read `ROADMAP.md` to check completed steps (`[x]`) and the active step (`[~]`).
2. Check `git status` and `git diff` (or recent file modifications) to see what the user was editing last.
3. Run the test suite silently to see the current pass/fail state.
4. Present a tight **"Previously On..." Briefing**:
   - **Momentum Check**: Number of steps completed so far and the name of the last completed feature.
   - **Current Scene**: Which step is active and what works vs. what is currently failing.
   - **Your Last Edit**: A 1-line summary of the exact file/function the user left open or half-written.
   - **Next 2-Minute Action**: One tiny, concrete action to take right now to get a compiler error fixed or an assertion closer to green.
