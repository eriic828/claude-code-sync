# Everything Claude Code (ECC) — Project Overview

## Project Status
- **Winner:** Anthropic Hackathon
- **GitHub:** 140K+ stars, 21K+ forks, 170+ contributors
- **Version:** 2.0.0-rc.1
- **Support:** Claude Code, Codex, Cursor, OpenCode, Gemini, Hermes

## Core Philosophy

Not just configs. A complete performance optimization system for AI agent harnesses:
- Skills, instincts, memory optimization
- Continuous learning, security scanning
- Research-first development
- Production-ready evolved over 10+ months of daily use

---

## Architecture

### Hermes x ECC Integration
```
Telegram / CLI / TUI
        ↓
      Hermes (Operator Shell)
        ↓
 ECC skills + hooks + MCPs + generated workflow packs
        ↓
 GitHub / Context7 / Exa / Firecrawl / Playwright / business tools
```

### Recommended Capability Stack
**Core:**
- Hermes for chat, cron, orchestration, workspace state
- ECC for skills, rules, prompts, cross-harness conventions
- GitHub + Context7 + Exa + Firecrawl + Playwright as baseline MCP layer

**Content:**
- FFmpeg for local edit and assembly
- Remotion for programmable clips
- fal.ai for image/video generation
- ElevenLabs for voice, cleanup, audio packaging

**Business Ops:**
- Google Drive as system of record
- Stripe for revenue and payment operations
- GitHub for engineering execution
- Telegram for urgent nudges and approvals

---

## Asset Counts

| Category | Count |
|----------|-------|
| Agents | 48 specialized subagents |
| Skills | 182 workflow skills |
| Commands | 68 slash commands (legacy compatibility) |
| Hooks | Automated session lifecycle hooks |
| Rules | 12+ language ecosystem rules |
| MCP Configs | 14 MCP server configurations |
| Tests | 997+ internal validation tests |

---

## Project Structure

```
agents/          # 48 specialized subagents
skills/          # 182 workflow skills and domain knowledge
commands/        # 68 slash commands (legacy compatibility)
hooks/           # Trigger-based automations
rules/           # Always-follow guidelines (common + per-language)
scripts/         # Cross-platform Node.js utilities
mcp-configs/     # MCP server configurations
tests/           # Test suite
```

**Skills is the canonical workflow surface.** Commands remain only for compatibility.

---

## Core Principles

1. **Agent-First** — Delegate to specialized agents for domain tasks
2. **Test-Driven** — Write tests before implementation, 80%+ coverage required
3. **Security-First** — Never compromise on security; validate all inputs
4. **Immutability** — Always create new objects, never mutate existing ones
5. **Plan Before Execute** — Plan complex features before writing code

---

## Coding Standards

### Immutability (CRITICAL)
Always create new objects, never mutate. Return new copies with changes applied.

### File Organization
Many small files over few large ones. 200-400 lines typical, 800 lines max. Organize by feature/domain, not by type. High cohesion, low coupling.

### Error Handling
Handle errors at every level. Provide user-friendly messages in UI code. Log detailed context server-side. Never silently swallow errors.

### Input Validation
Validate all user input at system boundaries. Use schema-based validation. Fail fast with clear messages. Never trust external data.

### Code Quality Checklist
- Functions small (<50 lines), files focused (<800 lines)
- No deep nesting (>4 levels)
- Proper error handling, no hardcoded values
- Readable, well-named identifiers

---

## Testing Requirements

**Minimum coverage: 80%**

Test types (all required):
1. **Unit tests** — Individual functions, utilities, components
2. **Integration tests** — API endpoints, database operations
3. **E2E tests** — Critical user flows

**TDD Workflow (mandatory):**
1. Write test first (RED) — test should FAIL
2. Write minimal implementation (GREEN) — test should PASS
3. Refactor (IMPROVE) — verify coverage 80%+

---

## Development Workflow

1. **Plan** — Use planner agent, identify dependencies and risks, break into phases
2. **TDD** — Use tdd-guide agent, write tests first, implement, refactor
3. **Review** — Use code-reviewer agent immediately, address CRITICAL/HIGH issues
4. **Commit** — Conventional commits format, comprehensive PR summaries

**Knowledge Capture Policy:**
- Personal debugging notes, preferences → auto memory
- Team/project knowledge → project's existing docs structure
- Do NOT duplicate information already in code comments or docs
- Ask before creating new top-level files

---

## Git Workflow

**Commit format:** `<type>: <description>`
Types: feat, fix, refactor, docs, test, chore, perf, ci

---

## Architecture Patterns

**API Response Format:** Consistent envelope with success indicator, data payload, error message, and pagination metadata.

**Repository Pattern:** Encapsulate data access behind standard interface (findAll, findById, create, update, delete). Business logic depends on abstract interface, not storage mechanism.

**Skeleton Projects:** Search for battle-tested templates, evaluate with parallel agents (security, extensibility, relevance), clone best match, iterate within proven structure.

---

## Security Guidelines

**Before ANY commit:**
- No hardcoded secrets (API keys, passwords, tokens)
- All user inputs validated
- SQL injection prevention (parameterized queries)
- XSS prevention (sanitized HTML)
- CSRF protection enabled
- Authentication/authorization verified
- Rate limiting on all endpoints
- Error messages don't leak sensitive data

**Secret Management:** NEVER hardcode secrets. Use environment variables or a secret manager. Validate required secrets at startup. Rotate any exposed secrets immediately.

**If security issue found:** STOP → use security-reviewer agent → fix CRITICAL issues → rotate exposed secrets → review codebase for similar issues.

---

## Performance

**Context Management:** Avoid last 20% of context window for large refactoring and multi-file features. Lower-sensitivity tasks (single edits, docs, simple fixes) tolerate higher utilization.

**Build Troubleshooting:** Use build-error-resolver agent → analyze errors → fix incrementally → verify after each fix.

---

## Hook System

Session lifecycle hooks that run automatically:
- SessionStart: initialization and context loading
- Stop-phase: automatic session summaries and knowledge capture

**Runtime Controls:**
- `ECC_HOOK_PROFILE=minimal|standard|strict`
- `ECC_DISABLED_HOOKS=...` for runtime gating without editing hook files

---

## Harness Commands

- `/harness-audit`
- `/loop-start`, `/loop-status`
- `/quality-gate`
- `/model-route`

---

## Cross-Harness Parity

Behavior tightened across Claude Code, Cursor, OpenCode, and Codex app/CLI. Same repo ships cleanly across all major harnesses.

---

## Success Metrics

- All tests pass with 80%+ coverage
- No security vulnerabilities
- Code is readable and maintainable
- Performance is acceptable
- User requirements are met
