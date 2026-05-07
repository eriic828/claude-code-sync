# ECC Council System — Four-Voice Decision Making

## Overview

Convene a four-voice council for ambiguous decisions, tradeoffs, and go/no-go calls. Use when multiple valid paths exist and you need structured disagreement before choosing.

This is the **anti-anchoring mechanism** — prevents conversational bias by launching independent subagents with fresh context.

---

## When to Use Council

Use council when:
- A decision has multiple credible paths and no obvious winner
- You need explicit tradeoff surfacing
- The user asks for second opinions, dissent, or multiple perspectives
- Conversational anchoring is a real risk
- A go/no-go call would benefit from adversarial challenge

**Examples:**
- Monorepo vs polyrepo
- Ship now vs hold for polish
- Feature flag vs full rollout
- Simplify scope vs keep strategic breadth

---

## When NOT to Use Council

| Instead of council | Use |
| --- | --- |
| Verifying whether output is correct | santa-method |
| Breaking a feature into implementation steps | planner |
| Designing system architecture | architect |
| Reviewing code for bugs or security | code-reviewer or santa-method |
| Straight factual questions | just answer directly |
| Obvious execution tasks | just do the task |

---

## Council Roles

| Voice | Lens |
| --- | --- |
| **Architect** | correctness, maintainability, long-term implications |
| **Skeptic** | premise challenge, simplification, assumption breaking |
| **Pragmatist** | shipping speed, user impact, operational reality |
| **Critic** | edge cases, downside risk, failure modes |

**Critical:** The three external voices (Skeptic, Pragmatist, Critic) should be launched as **fresh subagents with ONLY the question and relevant context**, not the full ongoing conversation. That is the anti-anchoring mechanism.

---

## Council Workflow

### Step 1: Extract the real question

Reduce the decision to one explicit prompt:
- What are we deciding?
- What constraints matter?
- What counts as success?

If the question is vague, ask **one clarifying question** before convening the council.

### Step 2: Gather only the necessary context

If codebase-specific:
- Collect relevant files, snippets, issue text, or metrics
- Keep it compact
- Include only context needed to make the decision

If strategic/general:
- Skip repo snippets unless they materially change the answer

### Step 3: Form the Architect position FIRST

Before reading other voices, write down:
- Your initial position
- The three strongest reasons for it
- The main risk in your preferred path

Do this first so the synthesis does not simply mirror the external voices.

### Step 4: Launch three independent voices in PARALLEL

Each subagent gets:
- The decision question
- Compact context if needed
- A strict role
- **No unnecessary conversation history**

**Prompt shape for each subagent:**

```text
You are the [ROLE] on a four-voice decision council.

Question:
[decision question]

Context (if applicable):
[compact context snippets]

Deliverables:
1. Your clear position on the question
2. Three strong reasons for your position
3. The biggest risk or downside if your position wins
4. One concrete, testable condition that would make you change your mind

Be concise. Do not hedge. Pick a side and defend it.
```

### Step 5: Synthesize

After all three voices return:
- Compare each position against your original Architect position
- Identify where all four voices agree
- Identify genuine areas of disagreement
- Surface the strongest arguments from each voice
- Identify which conditions would change each position
- Form your final recommendation

**Synthesis deliverables:**
- Clear final recommendation
- Summary of areas of consensus
- Summary of areas of genuine disagreement (not just wording)
- The strongest counterargument to your recommendation
- The conditions under which you would reverse this decision

---

## Anti-Patterns to Avoid

❌ **Don't ask leading questions** — Don't frame the prompt to get the answer you want

❌ **Don't seed with your preference** — Don't give subagents your position as context

❌ **Don't cherry-pick** — If three voices disagree with you, that's signal, not noise

❌ **Don't make it a vote** — It's about argument quality, not majority rule

✅ **Do let voices disagree** — Constructive disagreement is the point

✅ **Do change your mind** — If the arguments are strong, update your position

✅ **Do document the conditions** — Write down what would make you revisit this decision

---

## Council Output Template

```
# Council Decision: [Topic]

## Recommendation: [Clear position]

## Areas of Consensus
- [Point 1]
- [Point 2]
- [Point 3]

## Genuine Disagreements
- [Issue]: [Voice A says X], [Voice B says Y]
- [Issue]: [Voice A says X], [Voice B says Y]

## Strongest Counterargument
[The best argument against the recommendation]

## Reversal Conditions
I will reverse this recommendation if:
1. [Concrete, testable condition 1]
2. [Concrete, testable condition 2]

## Voice Summaries

### Architect (Original)
Position: [position]
Reasons: [reason 1], [reason 2], [reason 3]
Risk: [main risk]

### Skeptic
Position: [position]
Reasons: [reason 1], [reason 2], [reason 3]
Risk: [main risk]

### Pragmatist
Position: [position]
Reasons: [reason 1], [reason 2], [reason 3]
Risk: [main risk]

### Critic
Position: [position]
Reasons: [reason 1], [reason 2], [reason 3]
Risk: [main risk]
```
