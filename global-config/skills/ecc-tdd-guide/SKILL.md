---
name: ecc-tdd-guide
description: Strict Test-Driven Development workflow from ECC. 80%+ coverage requirement. RED-GREEN-REFACTOR cycle: write failing test first, then minimal implementation, then refactor.
---

# ECC TDD Guide

Strict Test-Driven Development workflow from Everything Claude Code.

**Non-negotiable rule:** 80%+ test coverage required.

## TDD Workflow (MANDATORY)

### Stage 1: RED — Write Failing Test

Write the test first. It should FAIL.

**What to test:**
- Unit tests for individual functions, utilities, components
- Integration tests for API endpoints, database operations
- E2E tests for critical user flows

**Test requirements:**
- Clear assertion of expected behavior
- No implementation code yet
- Test should fail for the right reason

**Verify:** Run the test — confirm it FAILS. If it passes unexpectedly, you're testing the wrong thing.

### Stage 2: GREEN — Write Minimal Implementation

Write ONLY the code needed to make the test pass. No extra features, no premature optimization.

**Rules for GREEN stage:**
- Minimal code possible
- No abstractions, no DRY yet
- No edge case handling beyond what the test requires
- Just make it pass

**Verify:** Run the test — confirm it PASSES.

### Stage 3: REFACTOR — Improve

Now you can clean up, abstract, optimize, handle edge cases. Keep the test passing at all times.

**What to do in REFACTOR:**
- Extract repeated code
- Add proper abstractions
- Handle edge cases
- Improve naming
- Add documentation
- Optimize performance (only if needed)

**Rule:** Never add new functionality in REFACTOR. That needs a new test → RED stage.

**Verify:** Run ALL tests — confirm they still PASS.

---

## Testing Requirements

**Minimum coverage: 80%**

## Test Types (All Required)

### 1. Unit Tests
Test individual functions and components in isolation.
- Mock external dependencies
- Fast execution
- One assertion per test (or logical group)

### 2. Integration Tests
Test how components work together.
- Database operations
- API endpoints
- Service interactions
- Less mocking, more real integration

### 3. E2E Tests
Test critical user flows from end to end.
- Playwright for browser testing
- Real user journeys
- Slow, so only for critical paths

---

## Test Troubleshooting Workflow

If tests fail unexpectedly:

1. **Check test isolation** — Are tests leaking state?
2. **Verify mocks** — Are mocks set up correctly?
3. **Fix implementation** — Don't change the test to pass; fix the code
4. **Only change tests if they're wrong** — If the test itself is buggy, fix it, then verify RED again

---

## Code Quality Checklist

Enforce after TDD cycle:

- Functions small (<50 lines)
- Files focused (<800 lines)
- No deep nesting (>4 levels)
- Proper error handling
- No hardcoded values
- Readable, well-named identifiers
- 80%+ test coverage

---

## Immutability Principle (CRITICAL)

Always create new objects, never mutate existing ones. Return new copies with changes applied.

**Good:**
```typescript
function updateUser(users: User[], id: string, updates: Partial<User>): User[] {
  return users.map(user => 
    user.id === id ? { ...user, ...updates } : user
  );
}
```

**Bad:**
```typescript
function updateUser(users: User[], id: string, updates: Partial<User>): void {
  const user = users.find(u => u.id === id);
  if (user) Object.assign(user, updates);
}
```

---

## File Organization Principle

Many small files over few large ones.
- 200-400 lines = typical
- 800 lines = maximum
- Organize by feature/domain, not by type
- High cohesion, low coupling

---

## Error Handling Principles

- Handle errors at every level
- Provide user-friendly messages in UI code
- Log detailed context server-side
- **Never silently swallow errors**

---

## Input Validation Principles

- Validate all user input at system boundaries
- Use schema-based validation (Zod, Joi, etc.)
- Fail fast with clear messages
- **Never trust external data**

---

## TDD Anti-Patterns

❌ **Write code first, tests later** — That's not TDD

❌ **Write tests that don't fail** — Useless tests

❌ **Write giant tests** — Split into smaller focused tests

❌ **Skip REFACTOR stage** — Technical debt accumulates

❌ **Add features in REFACTOR** — New features need new tests

❌ **Change tests to make them pass** — Fix the code, not the test

✅ **RED → GREEN → REFACTOR → Repeat** — The only correct order

---

## Development Workflow Summary

1. **Plan** — Use planner agent, identify dependencies and risks, break into phases
2. **TDD** — Use tdd-guide agent: RED → GREEN → REFACTOR, repeat
3. **Review** — Use code-reviewer agent immediately, address CRITICAL/HIGH issues
4. **Security** — Use security-reviewer for sensitive code
5. **Commit** — Conventional commits format

---

## Knowledge Capture Policy

**Where to put what:**
- Personal debugging notes, preferences, temporary context → auto memory
- Team/project knowledge (architecture decisions, API changes, runbooks) → project's existing docs structure
- **Do NOT duplicate information already in code comments or docs**
- Ask before creating new top-level files
