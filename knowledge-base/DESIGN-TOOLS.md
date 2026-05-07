# Claude Code Design Tools & Skills

## Recommended Installation

### 1. GitNexus (Code Knowledge Graph)

**Why:** Zero-token local code indexing, change impact analysis, PR risk assessment, and root cause diagnosis. Essential for understanding codebases before designing.

**Installation:**
```bash
npm install -g gitnexus
gitnexus setup
```

**Usage:**
```bash
# Index project
gitnexus analyze --embeddings --skills

# Analyze impact of changes
gitnexus impact <file>

# Diagnose issue root causes
gitnexus diagnose "<issue-description>"
```

---

### 2. Design Skills (Pre-Installed)

These skills are now available in your global config:

#### claude-design
**Purpose:** Design process & taste framework for creating high-quality HTML artifacts

**Use when:**
- Building landing pages, prototypes, decks
- Component design and system exploration
- Motion studies and animation work
- Any UI that needs visual polish and good design taste

**Key features:**
- Context-first design methodology (not vibes)
- Anti-slop rules to avoid generic AI design tropes
- Complete workflow from brief to verification
- Standards for HTML/CSS/JS artifacts

**Trigger:** Use automatically when design work is requested

---

#### popular-web-designs
**Purpose:** 54 real-world design systems ready for use

**Use when:**
- "Make it look like Stripe / Linear / Vercel"
- Page styled after a known brand
- Need a visual starting point pulled from a real product

**Included design systems:**
- **AI:** Claude, Ollama, ElevenLabs, Minimax, Mistral
- **Dev Tools:** Linear, Vercel, Cursor, Supabase, Stripe, Raycast
- **Design:** Figma, Framer, Notion, Webflow, Miro
- **Fintech:** Coinbase, Revolut, Wise, Kraken
- **Enterprise:** Apple, SpaceX, Spotify, Uber, NVIDIA, BMW

**Key features:**
- Exact color palettes as CSS custom properties
- Typography hierarchies with Google Fonts substitutions
- Component styling specifications
- Spacing and shadow systems
- Font substitution reference for proprietary fonts

---

### 3. Superpowers Plugin

**Why:** Structured workflow for design and development tasks with TDD enforcement, planning, and subagent review.

**Features:**
- Requirements refinement before coding
- Strict RED-GREEN-REFACTOR TDD cycle
- Bite-sized task planning with verification steps
- Two-stage subagent code review
- Auto code review between tasks

**Installation:** Available in Claude Code plugin marketplace

---

## Design Workflow

1. **Context Gathering:** Check existing repo files, theme files, component implementations
2. **Choose System:** Select a design from popular-web-designs or define custom system
3. **Plan:** Define scope, variants needed, success criteria
4. **Build:** Create self-contained HTML artifact
5. **Verify:** Check in browser, test interactions, validate responsive behavior

## Quick Start Example

```
"Create a landing page styled like Linear for our new API product"

1. Load popular-web-designs → Linear template
2. Load claude-design for workflow guidance
3. Extract Linear design tokens (purple accent, dark mode, precise typography)
4. Build HTML artifact with embedded CSS/JS
5. Verify responsive behavior and console errors
```

## Best Practices

- **Start with context, not vibes** — inspect existing code before designing
- **Use claude-design for process + popular-web-designs for vocabulary**
- **Create self-contained HTML artifacts** — single file, embedded CSS/JS
- **Verify before delivery** — always check in browser
- **Avoid AI slop** — no generic gradients, glassmorphism, or fake dashboard data
