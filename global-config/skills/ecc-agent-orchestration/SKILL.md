---
name: ecc-agent-orchestration
description: Proactive subagent delegation system with 48 specialized agents. Auto-triggers without user prompting: planner for complexity, code-reviewer after changes, tdd-guide for new code, architect for decisions, security-reviewer for sensitive code.
---

# ECC Agent Orchestration

Proactive subagent delegation system. Use agents automatically without waiting for user prompting. This is the ECC core — specialized subagents for domain tasks, launched in parallel when appropriate.

## Available Agents

| Agent | Purpose | Trigger Condition |
|-------|---------|-------------------|
| **planner** | Implementation planning | Complex features, refactoring, multi-file changes |
| **architect** | System design and scalability | Architectural decisions, new system design |
| **tdd-guide** | Test-driven development | New features, bug fixes, any code addition |
| **code-reviewer** | Code quality and maintainability | Immediately after writing/modifying code |
| **security-reviewer** | Vulnerability detection | Before commits, sensitive code, auth changes |
| **build-error-resolver** | Fix build/type errors | When build fails, compilation errors |
| **e2e-runner** | End-to-end Playwright testing | Critical user flows, UI changes |
| **refactor-cleaner** | Dead code cleanup | Code maintenance, technical debt reduction |
| **doc-updater** | Documentation and codemaps | After API changes, feature additions |
| **cpp-reviewer** | C/C++ code review | C and C++ projects |
| **cpp-build-resolver** | C/C++ build errors | C and C++ build failures |
| **docs-lookup** | Documentation lookup via Context7 | API/docs questions, unfamiliar libraries |
| **go-reviewer** | Go code review | Go projects |
| **go-build-resolver** | Go build errors | Go build failures |
| **kotlin-reviewer** | Kotlin code review | Kotlin/Android/KMP projects |
| **kotlin-build-resolver** | Kotlin/Gradle build errors | Kotlin build failures |
| **database-reviewer** | PostgreSQL/Supabase specialist | Schema design, query optimization |
| **python-reviewer** | Python code review | Python projects |
| **java-reviewer** | Java and Spring Boot code review | Java/Spring Boot projects |
| **java-build-resolver** | Java/Maven/Gradle build errors | Java build failures |
| **loop-operator** | Autonomous loop execution | Long-running loops, stall monitoring |
| **harness-optimizer** | Harness config tuning | Reliability issues, cost, throughput |
| **rust-reviewer** | Rust code review | Rust projects |
| **rust-build-resolver** | Rust build errors | Rust build failures |
| **pytorch-build-resolver** | PyTorch runtime/CUDA errors | PyTorch build/training failures |
| **typescript-reviewer** | TypeScript/JavaScript code review | TypeScript/JavaScript projects |

## Auto-Trigger Rules

Use these agents **proactively without user prompt**:

| Event | Agent to Launch |
|-------|----------------|
| User asks for complex feature | **planner** first, then tdd-guide |
| You just finished writing/modifying code | **code-reviewer** immediately |
| User reports bug or asks for new feature | **tdd-guide** |
| Architectural decision needed | **architect** |
| Security-sensitive code (auth, payments) | **security-reviewer** before commit |
| Build/compilation fails | **[language]-build-resolver** |
| Long-running autonomous task | **loop-operator** |
| Performance or reliability issues | **harness-optimizer** |
| Database schema changes | **database-reviewer** |

## Parallel Execution

Launch multiple agents **simultaneously** for independent operations:

**Example: New Feature Implementation**
1. Launch **planner** for implementation plan
2. (After plan) Launch **tdd-guide** for RED-GREEN-REFACTOR
3. (After code) Launch **code-reviewer** AND **security-reviewer** in parallel

**Example: Build Failure in Complex Project**
1. Launch **[language]-build-resolver** for fixes
2. Launch **harness-optimizer** for root cause analysis
3. Both run in parallel

## Agent Selection Matrix

| Task Type | Primary Agent | Secondary Agent |
|-----------|---------------|-----------------|
| New feature planning | planner | architect |
| Implementation | tdd-guide | code-reviewer |
| Build failure | [language]-build-resolver | harness-optimizer |
| Security audit | security-reviewer | code-reviewer |
| Performance tuning | harness-optimizer | architect |
| Documentation | doc-updater | code-reviewer |
| Long-running loop | loop-operator | harness-optimizer |
| API design | architect | planner |
| Database schema | database-reviewer | architect |
| PyTorch / CUDA | pytorch-build-resolver | harness-optimizer |

## Language Ecosystem Coverage

- TypeScript / JavaScript
- Python
- Go
- Java / Spring Boot
- Kotlin / Android / KMP
- C / C++
- Rust
- PHP
- Perl
- Swift / iOS
- C# / .NET

## Best Practices

1. **Don't wait for permission** — Launch appropriate agents automatically
2. **Parallelize when independent** — Don't chain unnecessarily
3. **Specialize by domain** — Use the language-specific reviewers
4. **Chain for quality** — code → code-reviewer → security-reviewer → commit
5. **Inform the user** — Say "Launching planner agent to break this down..."

## Anti-Patterns

❌ **Don't do everything yourself** — Delegate to specialized agents

❌ **Don't launch sequentially if parallel works** — Save time with parallel execution

❌ **Don't skip review steps** — Always run code-reviewer after writing code

❌ **Don't use wrong agent for task** — Use tdd-guide for implementation, not planner
