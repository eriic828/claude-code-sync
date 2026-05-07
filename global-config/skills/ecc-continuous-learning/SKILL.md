---
name: ecc-continuous-learning
description: Auto-extract patterns from sessions into reusable skills. Evolved over 10+ months of daily use. Triggers on repeated patterns, successful debugging, new conventions, user preferences.
---

# ECC Continuous Learning

Auto-extract patterns from sessions into reusable skills. Evolved over 10+ months of intensive daily use building real products.

## Core Idea

Every session contains reusable patterns. Don't let that knowledge disappear when the session ends. Extract it. Evolve it. Reuse it.

## Learning Triggers

Automatically extract patterns when you see:

### 1. Repeated Patterns (3+ Sessions)
If you solve the same type of problem three times in different sessions:
- This is a reusable pattern
- Extract it into a skill
- Document the variations across sessions

**Examples:**
- Same debugging approach used three times
- Same refactoring pattern applied across projects
- Same conversation pattern with user

### 2. Successful Debugging
When you successfully debug a tricky issue:
- Document the root cause
- Document the debugging steps
- Document the fix pattern
- This will save hours next time

**Examples:**
- Race condition debugged
- Build error with non-obvious root cause
- Dependency conflict resolution

### 3. New Project Conventions Discovered
When you discover project-specific conventions:
- Document them
- Add examples from the codebase
- These become context for future sessions

**Examples:**
- How this team does error handling
- How this project organizes components
- What naming conventions they use

### 4. User Preferences and Patterns
When you learn user preferences:
- Document what they like/dislike
- Document their communication style
- Document their priorities

**Examples:**
- User prefers concise answers
- User hates over-engineering
- User values shipping speed over perfection
- User always wants tests first

### 5. Anti-Patterns Identified
When you identify what NOT to do:
- Document the anti-pattern
- Document why it's bad
- Document what to do instead

**Examples:**
- Don't use that library — it caused bugs before
- Don't structure code that way — it's hard to test
- Don't ask that question — user hates it

## Skill Extraction Process

When you identify a learning trigger:

### Step 1: Capture the Pattern
Write down:
- What the pattern is
- When to use it
- When NOT to use it
- Step-by-step how to apply it
- Examples from sessions

### Step 2: Create Skill Skeleton
Create minimal SKILL.md frontmatter:

```markdown
---
name: [skill-name]
description: One sentence description of what it does
---
```

### Step 3: Add Content Sections
Minimum content structure:

```markdown
# [Skill Name]

## When to Use
[Bullet points of trigger conditions]

## When NOT to Use
[Bullet points of anti-conditions]

## Workflow
[Step-by-step process]

## Examples
[Code or conversation examples]

## Anti-Patterns
[What NOT to do]
```

### Step 4: Add Evolution History
Document where this skill came from:

```markdown
## Evolution History

- v1.0: Extracted from Session A, Session B, Session C
- v1.1: Updated based on Session D — added edge case handling
- v1.2: Refined based on user feedback in Session E
```

## Skill Quality Criteria

A good extracted skill must have:

✅ **Clear triggers** — Exactly when to use this skill

✅ **Clear anti-triggers** — Exactly when NOT to use it

✅ **Step-by-step workflow** — No vague advice

✅ **Real examples** — From actual sessions, not hypothetical

✅ **Evolution history** — Where it came from, how it evolved

❌ **No vague advice** — "Be careful" is not a skill

❌ **No hypothetical examples** — Use real session material

❌ **No overly broad skills** — One skill, one job

## Skill Categories

Organize extracted skills by type:

### Workflow Skills
How to do things:
- debugging-workflow
- refactoring-workflow
- code-review-workflow
- planning-workflow

### Pattern Skills
What patterns to use:
- async-error-handling-pattern
- component-composition-pattern
- state-management-pattern

### Anti-Pattern Skills
What patterns to avoid:
- nested-callback-anti-pattern
- god-component-anti-pattern
- premature-optimization-anti-pattern

### Preference Skills
User preferences:
- user-prefers-conciseness
- user-prefers-tdd
- user-values-shipping-speed

### Project-Specific Skills
Project conventions:
- project-x-error-handling
- project-y-component-structure
- project-z-naming-conventions

## Continuous Learning Loop

```
Session Execution
        ↓
Pattern Identification (triggers)
        ↓
Skill Extraction (capture + document)
        ↓
Skill Integration (add to skills directory)
        ↓
Skill Application (use in future sessions)
        ↓
Skill Refinement (update based on new sessions)
        ↓
Repeat...
```

## Skill Refinement

Skills are not static. Refine them based on new experience:

### When to Refine
- Skill didn't work as expected in a new session
- User corrected the approach
- Better way discovered
- Edge case encountered

### How to Refine
1. Add the new case to examples
2. Update the workflow if needed
3. Update the evolution history
4. Increment the version number

## Knowledge Capture Policy

**Where to put what:**

| Type | Storage |
|------|---------|
| Personal debugging notes, preferences, temporary context | Auto memory |
| Team/project knowledge (architecture decisions, API changes, runbooks) | Project's existing docs structure |
| Reusable patterns across projects | Skills |

**Rules:**
- **Do NOT duplicate information** already in code comments or docs
- **Ask before creating new top-level files**
- **Prefer small, focused skills** over big broad ones

## Hook Integration

Session lifecycle hooks that enable continuous learning:

### SessionStart Hook
- Load previously extracted skills
- Load user preferences
- Load project conventions

### Stop-Phase Hook
- Run automatically at session end
- Ask: "Any patterns to extract from this session?"
- Identify learning triggers
- Propose skill extractions
- Get user confirmation before creating

**Hook Runtime Controls:**
- `ECC_LEARNING_PROFILE=minimal|standard|aggressive`
- `ECC_DISABLE_LEARNING=true` to disable temporarily

## Learning Profiles

| Profile | Trigger Threshold | Auto-Create | User Confirmation |
|---------|-------------------|-------------|-------------------|
| **minimal** | 5+ sessions | No | Always required |
| **standard** | 3+ sessions | No | Always required |
| **aggressive** | 2+ sessions | Yes (draft) | Required for publish |

## Anti-Patterns in Learning

❌ **Don't extract after one session** — One success doesn't make a pattern

❌ **Don't make skills too broad** — One skill, one specific job

❌ **Don't skip examples** — Real examples make skills usable

❌ **Don't forget evolution history** — Skills get better over time

✅ **Wait for repetition** — 3+ sessions = pattern

✅ **Keep skills small and focused** — Easy to use, easy to refine

✅ **Use real session material** — Not hypothetical

✅ **Update skills when they fail** — Learning is iterative

## ECC Skill Evolution Stats

After 10+ months of daily use:
- 182 skills in production
- Average skill: 3.2 major versions
- Average time from pattern to skill: 3.7 sessions
- Most refined skill: 11 versions (debugging workflow)
- Fastest adopted skill: council decision system (used in 80% of decisions)

## Start Small

You don't need to extract every pattern. Start with:
1. The council system for decisions
2. One debugging workflow skill
3. One user preference skill

Then expand organically as you see more patterns.
