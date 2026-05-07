# ECC Security System & High-Value Skills

---

## Security Architecture

### AgentShield
- 1282 security tests, 102 rules
- Integrated via `/security-scan` skill
- Runs directly from Claude Code

### Security Scanning Triggers

**Before ANY commit:**
- No hardcoded secrets (API keys, passwords, tokens)
- All user inputs validated
- SQL injection prevention (parameterized queries)
- XSS prevention (sanitized HTML)
- CSRF protection enabled
- Authentication/authorization verified
- Rate limiting on all endpoints
- Error messages don't leak sensitive data

### Secret Management

**NEVER hardcode secrets.**
- Use environment variables or a secret manager
- Validate required secrets at startup
- Rotate any exposed secrets immediately

**If security issue found:**
STOP → use security-reviewer agent → fix CRITICAL issues → rotate exposed secrets → review codebase for similar issues.

---

## High-Value Skills (182 Total)

### Agent & Harness & Orchestration
| Skill | Purpose |
|-------|---------|
| **council** | Four-voice decision council for ambiguous decisions, tradeoffs, go/no-go calls |
| **continuous-agent-loop** | Autonomous agent loop with stall detection, context management, intervention points |
| **verification-loop** | Multi-stage verification with Santa Method error correction |
| **autonomous-agent-harness** | Build and operate autonomous agent harnesses |
| **agent-harness-construction** | Agent harness construction patterns |
| **agent-eval** | Agent evaluation framework |
| **agent-introspection-debugging** | Agent introspection and debugging tools |
| **loop-operator** | Autonomous loop execution, stall monitoring, safe intervention |
| **harness-optimizer** | Harness config tuning for reliability, cost, throughput |

---

### Research & Learning
| Skill | Purpose |
|-------|---------|
| **deep-research** | Deep research workflow with source verification |
| **continuous-learning** | Auto-extract patterns from sessions into reusable skills |
| **continuous-learning-v2** | Enhanced continuous learning with skill evolution |
| **market-research** | Market research and competitive analysis framework |
| **research-ops** | Research operations and knowledge management |
| **santa-method** | Verification method for catching errors via independent checks |

---

### Security
| Skill | Purpose |
|-------|---------|
| **security-scan** | AgentShield security scanning, 1282 tests, 102 rules |
| **security-review** | Security review framework |
| **security-bounty-hunter** | Bug bounty hunting patterns |
| **llm-trading-agent-security** | Security for LLM trading agents |
| **defi-amm-security** | DeFi AMM security patterns |
| **django-security** | Django security checklist |
| **laravel-security** | Laravel security patterns |
| **springboot-security** | Spring Boot security patterns |
| **perl-security** | Perl security patterns |

---

### Cost & Performance
| Skill | Purpose |
|-------|---------|
| **cost-aware-llm-pipeline** | Cost-aware LLM pipeline with budget tracking |
| **context-budget** | Context budget management and optimization |
| **benchmark** | Agent performance benchmarking |
| **ecc-tools-cost-audit** | ECC tools cost auditing |

---

### Design & Frontend
| Skill | Purpose |
|-------|---------|
| **design-system** | Design system construction and maintenance |
| **liquid-glass-design** | Liquid glass UI design patterns |
| **frontend-slides** | Zero-dependency HTML presentation builder with PPTX conversion |
| **accessibility** | Accessibility audit and remediation |

---

### Content & Operations
| Skill | Purpose |
|-------|---------|
| **article-writing** | Article writing framework |
| **content-engine** | Content generation engine |
| **brand-voice** | Brand voice capture and consistency |
| **social-graph-ranker** | Social graph ranking and analysis |
| **connections-optimizer** | Connection and outreach optimization |
| **customer-billing-ops** | Customer billing operations |
| **google-workspace-ops** | Google Workspace operations |
| **project-flow-ops** | Project flow operations |
| **workspace-surface-audit** | Workspace surface audit |
| **investor-materials** | Investor materials preparation |
| **investor-outreach** | Investor outreach framework |
| **crosspost** | Cross-platform content publishing |

---

### Engineering & Architecture
| Skill | Purpose |
|-------|---------|
| **ai-first-engineering** | AI-first engineering methodology |
| **agentic-engineering** | Agentic engineering patterns |
| **architecture-decision-records** | Architecture decision records (ADR) framework |
| **api-design** | API design patterns |
| **api-connector-builder** | API connector construction |
| **blueprint** | Project blueprinting |
| **backend-patterns** | Backend architecture patterns |
| **codebase-onboarding** | Codebase onboarding framework |
| **coding-standards** | Coding standards and best practices |
| **architecture-decision-records** | ADR creation and maintenance |

---

### MCP & Tools
| Skill | Purpose |
|-------|---------|
| **mcp-server-patterns** | MCP server construction patterns |
| **content-hash-cache-pattern** | Content hash caching patterns |
| **data-scraper-agent** | Data scraping agent patterns |
| **clickhouse-io** | ClickHouse I/O patterns |
| **browser-qa** | Browser QA and testing |

---

### Language-Specific
| Skill | Purpose |
|-------|---------|
| **bun-runtime** | Bun runtime patterns |
| **nextjs-turbopack** | Next.js with Turbopack patterns |
| **nestjs-patterns** | NestJS patterns |
| **pytorch-patterns** | PyTorch deep learning patterns |
| **cpp-coding-standards** | C/C++ coding standards |
| **cpp-testing** | C/C++ testing patterns |
| **csharp-testing** | C# testing patterns |
| **android-clean-architecture** | Android clean architecture |
| **compose-multiplatform-patterns** | Compose Multiplatform patterns |
| **swift-actor-persistence** | Swift actor persistence patterns |
| **swift-protocol-di-testing** | Swift protocol DI testing patterns |

---

## Hook System

Session lifecycle hooks that run automatically:

### Hook Runtime Controls
- `ECC_HOOK_PROFILE=minimal|standard|strict`
- `ECC_DISABLED_HOOKS=...` — runtime gating without editing hook files

### Hook Types
- **SessionStart** — initialization and context loading
- **Stop-phase** — automatic session summaries and knowledge capture

---

## Verification Loop (Santa Method)

Multi-stage verification for catching errors via independent checks.

### Verification Stages
1. **Stage 1** — Initial implementation check
2. **Stage 2** — Independent cross-check
3. **Stage 3** — Edge case testing
4. **Stage 4** — Security review
5. **Stage 5** — Final sign-off

### When to Use
- Code that touches security boundaries
- Critical path changes
- Refactoring that could break existing behavior
- Any change where correctness matters more than speed

---

## Continuous Learning

Auto-extract patterns from sessions into reusable skills.

### Learning Triggers
- Repeated patterns across 3+ sessions
- Successful debugging patterns
- New project conventions discovered
- User preferences and patterns

### Output
- New skill skeleton with extracted patterns
- Frontmatter with name, description, triggers
- Examples from sessions
- Evolution history
