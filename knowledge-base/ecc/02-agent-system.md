# ECC Agent Orchestration System

## Available Agents (48 Specialized Subagents)

| Agent | Purpose | When to Use |
|-------|---------|-------------|
| **planner** | Implementation planning | Complex features, refactoring |
| **architect** | System design and scalability | Architectural decisions |
| **tdd-guide** | Test-driven development | New features, bug fixes |
| **code-reviewer** | Code quality and maintainability | After writing/modifying code |
| **security-reviewer** | Vulnerability detection | Before commits, sensitive code |
| **build-error-resolver** | Fix build/type errors | When build fails |
| **e2e-runner** | End-to-end Playwright testing | Critical user flows |
| **refactor-cleaner** | Dead code cleanup | Code maintenance |
| **doc-updater** | Documentation and codemaps | Updating docs |
| **cpp-reviewer** | C/C++ code review | C and C++ projects |
| **cpp-build-resolver** | C/C++ build errors | C and C++ build failures |
| **docs-lookup** | Documentation lookup via Context7 | API/docs questions |
| **go-reviewer** | Go code review | Go projects |
| **go-build-resolver** | Go build errors | Go build failures |
| **kotlin-reviewer** | Kotlin code review | Kotlin/Android/KMP projects |
| **kotlin-build-resolver** | Kotlin/Gradle build errors | Kotlin build failures |
| **database-reviewer** | PostgreSQL/Supabase specialist | Schema design, query optimization |
| **python-reviewer** | Python code review | Python projects |
| **java-reviewer** | Java and Spring Boot code review | Java/Spring Boot projects |
| **java-build-resolver** | Java/Maven/Gradle build errors | Java build failures |
| **loop-operator** | Autonomous loop execution | Run loops safely, monitor stalls, intervene |
| **harness-optimizer** | Harness config tuning | Reliability, cost, throughput |
| **rust-reviewer** | Rust code review | Rust projects |
| **rust-build-resolver** | Rust build errors | Rust build failures |
| **pytorch-build-resolver** | PyTorch runtime/CUDA/training errors | PyTorch build/training failures |
| **typescript-reviewer** | TypeScript/JavaScript code review | TypeScript/JavaScript projects |

---

## Agent Orchestration

Use agents **proactively without user prompt**:
- Complex feature requests → **planner**
- Code just written/modified → **code-reviewer**
- Bug fix or new feature → **tdd-guide**
- Architectural decision → **architect**
- Security-sensitive code → **security-reviewer**
- Autonomous loops / loop monitoring → **loop-operator**
- Harness config reliability and cost → **harness-optimizer**

**Parallel Execution:** Launch multiple agents simultaneously for independent operations.

---

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

---

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
