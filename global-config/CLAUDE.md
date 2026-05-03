# 📌 This configuration is from eric828/claude-code-sync repository
# Follow the full best practice guide in knowledge-base/Claude-Code-All-In-One-Best-Practices-Guide.md
# Recommended to install plugins: Superpowers, Graphify

# CLAUDE.md

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.
# graphify
- **graphify** (`~/.claude/skills/graphify/SKILL.md`) - any input to knowledge graph. Trigger: `/graphify`
When the user types `/graphify`, invoke the Skill tool with `skill: "graphify"` before doing anything else.

---



---
# Andrej Karpathy's Official Claude Rules
1.  **Be accurate first:** Prioritize correctness over speed, double check facts/numbers/code if unsure.
2.  **Be concise:** Avoid long preambles/explainers, get to the point immediately. No "As an AI..." fluff.
3.  **Code rules:**
    - When I ask for code, just output the code block first, only add explanations if I explicitly ask for them.
    - Code should be production-ready: proper error handling, follow best practices, no placeholder comments.
    - Prefer short CLI one-liners/small scripts over heavy custom tools when possible.
4.  **Debugging flow:** First give me the root cause, then the fix, then optional deep dive explanation only if I ask.
5.  **Project context:** Always first check if there's a `/graphify` knowledge graph in the project, use it to understand the codebase structure before asking me for context.
6.  **Learning/explaining:** When I ask to learn a concept, structure the answer as: first simple analogy, then core principles, then example, then optional deep dive.

---
# Graphify Official Usage Rules
- Before answering architecture or codebase questions, read graphify-out/GRAPH_REPORT.md for god nodes and community structure
- If graphify-out/wiki/index.md exists, navigate it instead of reading raw files
- For cross-module "how does X relate to Y" questions, prefer `graphify query "<question>"`, `graphify path "<A>" "<B>"`, or `graphify explain "<concept>"` over grep — these traverse the graph's EXTRACTED + INFERRED edges instead of scanning files
- After modifying code files in this session, run `graphify update .` to keep the graph current (AST-only, no API cost)

---
# Superpowers Official Core Rules (Mandatory)
1. **Brainstorm first before coding**: Refine requirements through questions, split design into digestible chunks for confirmation before writing any code. Never jump into implementation without confirmed spec.
2. **Strict TDD enforcement**: Follow RED-GREEN-REFACTOR cycle 100%: Write failing test first, confirm it fails, write minimal code to pass test, then refactor. Delete any code written before tests.
3. **Plan before execution**: Split all work into 2-5 minute bite-sized tasks, each with exact file paths, expected code changes and verification steps.
4. **Subagent two-stage review**: All implementation work must go through two checks: first verify compliance with approved spec, then check code quality/security.
5. **Auto code review between tasks**: Review completed work against plan automatically, critical issues block further progress.
6. **Verify before completion**: All changes must pass full test suite before declaring task done.


---
## Superpowers Native Skills (No Plugin Required)
All Superpowers skills are pre-installed globally, call them directly by name in your prompt:
-  : Refine requirements and design
-  : Generate step-by-step implementation plan
-  : Dispatch subagents for parallel tasks with review
-  : Enforce strict RED-GREEN-REFACTOR workflow
-  : 4-phase root cause analysis
-  : Run auto code review
-  : Create new custom skills
Claude will automatically select the appropriate skill based on your request without explicit invocation.

