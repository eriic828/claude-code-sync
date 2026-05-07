# ECC (Everything Claude Code) Knowledge Base

## Overview

Purified import of Everything Claude Code — the Anthropic Hackathon winning agent performance system. 140K+ stars, 21K+ forks, production-ready patterns evolved over 10+ months of daily use.

**Original Project:** https://github.com/affaan-m/everything-claude-code

---

## 📚 Knowledge Base Contents

| File | Description |
|------|-------------|
| **[01-overview.md](./01-overview.md)** | Complete project overview, architecture, core principles, coding standards |
| **[02-agent-system.md](./02-agent-system.md)** | 48 specialized subagents, orchestration patterns, language coverage |
| **[03-council-system.md](./03-council-system.md)** | ⭐ Four-voice decision council, anti-anchoring mechanism |
| **[04-security-skills.md](./04-security-skills.md)** | Security system, 182 high-value skills catalog, verification loops |

## 🔌 Integrated Claude Code Skills

These skills are NOW in your `global-config/skills/` directory and will auto-load in Claude Code:

| Skill | Description |
|-------|-------------|
| **[ecc-council](../../global-config/skills/ecc-council/SKILL.md)** | ⭐ Four-voice decision council for ambiguous decisions, anti-anchoring mechanism |
| **[ecc-agent-orchestration](../../global-config/skills/ecc-agent-orchestration/SKILL.md)** | Proactive subagent delegation system with 48 specialized agents, auto-trigger rules |
| **[ecc-tdd-guide](../../global-config/skills/ecc-tdd-guide/SKILL.md)** | Strict TDD workflow, 80% coverage requirement, RED-GREEN-REFACTOR cycle |
| **[ecc-security-scan](../../global-config/skills/ecc-security-scan/SKILL.md)** | AgentShield security system, pre-commit checklist, secret management, incident response |
| **[ecc-continuous-learning](../../global-config/skills/ecc-continuous-learning/SKILL.md)** | Auto-extract patterns from sessions into reusable skills |

---

## 🌟 Key Features to Adopt

### 1. Council System (HIGH PRIORITY)
- Four-voice decision making for ambiguous choices
- Anti-anchoring via independent subagents
- Perfect for: architecture decisions, tradeoffs, go/no-go calls

### 2. Agent Orchestration
- 48 specialized subagents, auto-triggered
- Parallel execution for independent tasks
- Proactive delegation without user prompting

### 3. TDD & Security First
- 80%+ test coverage requirement
- Strict TDD workflow (RED → GREEN → REFACTOR)
- Pre-commit security scanning (1282 tests, 102 rules)

### 4. Immutability Principle
- Never mutate objects, always create new copies
- Small files (200-400 lines, 800 max)
- High cohesion, low coupling

### 5. Continuous Learning
- Auto-extract patterns from sessions → new skills
- Skill evolution foundation

---

## 🎯 Integration Priority

### Phase 1 (Immediate Value)
✅ **Council System** — Use for important decisions
✅ **Agent Selection Matrix** — Adopt subagent patterns
✅ **Coding Standards** — Apply immutability and file size principles

### Phase 2 (Medium Term)
🔄 **TDD Enforcement** — 80% coverage requirement
🔄 **Security Scanning** — Pre-commit security checks
🔄 **Hook System** — Session lifecycle automation

### Phase 3 (Long Term)
📅 **Continuous Learning** — Auto skill extraction
📅 **Verification Loops** — Santa Method error correction

---

## 🤝 Hermes x ECC Architecture

This is the EXACT architecture used by the ECC author:

```
Telegram / CLI / TUI
        ↓
      Hermes (Operator Shell)
        ↓
 ECC skills + hooks + MCPs (reusable workflows)
        ↓
 GitHub / Context7 / Exa / Firecrawl / Playwright
```

**ECC is the reusable system behind Hermes.**

---

## Recommended MCP Stack

| Tool | Purpose |
|------|---------|
| GitHub | Code hosting, CI/CD |
| Context7 | Documentation lookup |
| Exa | AI-native search |
| Firecrawl | Web scraping |
| Playwright | Browser automation / E2E testing |

---

## Statistics

| Metric | Value |
|--------|-------|
| GitHub Stars | 140,000+ |
| Forks | 21,000+ |
| Contributors | 170+ |
| Specialized Agents | 48 |
| Skills | 182 |
| Commands | 68 |
| Language Ecosystems | 12+ |
| Security Tests | 1282 |
| Security Rules | 102 |
| Internal Tests | 997+ |

---

## Origin

This knowledge base is purified from:
- https://github.com/affaan-m/everything-claude-code
- Version: 2.0.0-rc.1

**Purification applied:**
- Removed test files, build scripts, packaging code
- Removed redundant translations
- Extracted only the reusable patterns and principles
- Formatted for easy consumption in Claude Code / Hermes
