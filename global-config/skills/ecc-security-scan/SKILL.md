---
name: ecc-security-scan
description: ECC AgentShield security system — 1282 tests, 102 rules. Pre-commit security checklist, secret management, vulnerability detection, and incident response protocol.
---

# ECC Security Scan

ECC AgentShield security system. 1282 security tests, 102 rules. Run before ANY commit.

## Pre-Commit Security Checklist

**MANDATORY: Run this check before ANY commit.**

✅ **Secrets Check**
- No hardcoded API keys, passwords, tokens
- No private keys or certificates in code
- All secrets in environment variables or secret manager

✅ **Input Validation**
- All user inputs validated at boundaries
- Schema-based validation (Zod, Joi, etc.)
- No unsanitized user input in SQL queries

✅ **SQL Injection Prevention**
- All database queries use parameterized queries
- No string concatenation with user input
- ORM/query builder used correctly

✅ **XSS Prevention**
- All user-generated content sanitized before rendering
- Content Security Policy configured
- No unsafe inline scripts/styles

✅ **CSRF Protection**
- CSRF tokens on all state-changing requests
- SameSite cookies configured
- Origin header verification

✅ **Authentication & Authorization**
- All protected routes require auth
- Permission checks on every operation
- No IDOR (Insecure Direct Object Reference) vulnerabilities
- JWT tokens properly validated and expired

✅ **Rate Limiting**
- Rate limiting on all API endpoints
- Rate limiting on auth endpoints (login, password reset)
- No brute force vulnerability

✅ **Error Handling**
- Error messages don't leak sensitive data
- No stack traces exposed to users
- Proper 4xx/5xx status codes

✅ **Dependency Check**
- No known vulnerable dependencies (npm audit, cargo audit, etc.)
- No deprecated packages
- Lock files committed

---

## Secret Management Protocol

**RULE ZERO: NEVER hardcode secrets.**

### Correct Approaches

1. **Environment Variables** — Load from .env files (never commit .env)
2. **Secret Manager** — AWS Secrets Manager, HashiCorp Vault, etc.
3. **Encrypted Config** — Sealed secrets, SOPS

### Validation

- Validate required secrets at application startup
- Fail fast if required secrets are missing
- Log which secrets are loaded (but NOT the values)

### Rotation

**If ANY secret is exposed:**
1. Rotate the secret IMMEDIATELY
2. Revoke old credentials
3. Audit access logs
4. Review codebase for similar issues
5. Inform affected parties

---

## Security Incident Response

**If security issue found:**

1. **STOP** — Do not proceed with commit or deployment
2. **ASSESS** — Use security-reviewer agent for full analysis
3. **FIX** — Fix CRITICAL issues first
4. **ROTATE** — Rotate any exposed secrets
5. **REVIEW** — Review entire codebase for similar issues
6. **DOCUMENT** — Document what happened and how it was fixed
7. **AUDIT** — Audit access logs for any potential exploitation

---

## Security Vulnerability Categories

### Critical (Fix Immediately)
- Hardcoded secrets
- SQL injection
- Authentication bypass
- Remote code execution
- Privilege escalation
- Data exposure

### High (Fix Before Next Release)
- XSS vulnerabilities
- CSRF missing
- IDOR vulnerabilities
- Insecure direct object references
- Missing rate limiting

### Medium (Fix in Current Sprint)
- Insecure cookie settings
- Weak password policies
- Missing security headers
- Information leakage
- Overly permissive CORS

### Low (Fix When Convenient)
- Minor information leakage
- Non-sensitive debug endpoints
- Cosmetic security issues

---

## Language-Specific Security Rules

### TypeScript / JavaScript
- No `eval()` with user input
- No `innerHTML` with unsanitized content
- Use `DOMPurify` for user-generated HTML
- No `new Function()` with user input
- Validate all env vars at startup

### Python
- No `exec()` or `eval()` with user input
- Use parameterized queries (psycopg2, SQLAlchemy)
- No `pickle` loading from untrusted sources
- Jinja2 templates autoescape enabled

### Go
- No `html/template` with untrusted content
- Use `database/sql` parameterized queries
- No reflection on user input

### Rust
- No `unsafe` blocks unless absolutely necessary
- Validate all inputs before unsafe operations
- Use `sqlx` or `diesel` with parameterized queries

---

## Security Review Questions

Ask these for every security review:

1. **Authentication:** Can anyone access this without logging in?
2. **Authorization:** Can a regular user do admin things?
3. **Input Validation:** Is every input validated?
4. **SQL Injection:** Are all queries parameterized?
5. **XSS:** Is all user content sanitized before rendering?
6. **Secrets:** Are there any hardcoded secrets?
7. **Dependencies:** Are any dependencies vulnerable?
8. **Error Handling:** Do errors leak sensitive info?
9. **Rate Limiting:** Can this be brute-forced?
10. **Audit Logging:** Are security events logged?

---

## Security Testing

### Automated
- Dependency scanning (npm audit, cargo audit, etc.)
- SAST tools (ESLint security plugin, clippy, etc.)
- Secret scanning (git-secrets, gitleaks)

### Manual
- Code review by security-reviewer agent
- Penetration testing for critical paths
- Threat modeling for new features

---

## Security Development Lifecycle

1. **Threat Model** — Before implementation, identify threats
2. **Secure Design** — Design with security in mind
3. **Secure Coding** — Follow security best practices
4. **Security Review** — security-reviewer agent review
5. **Security Testing** — Automated + manual testing
6. **Deployment** — Secret rotation, environment validation
7. **Monitoring** — Audit logs, anomaly detection

---

## AgentShield Stats

- 1282 security tests
- 102 security rules
- Integrated via `/security-scan` skill
- Runs directly in Claude Code

---

## Security Anti-Patterns

❌ **"Security is someone else's job"** — No, it's everyone's job

❌ **"We'll add security later"** — No, build it in from day one

❌ **"This is just internal, no need for security"** — Attacks come from inside too

❌ **"We don't have secrets in here"** — You probably do. Check.

✅ **Security first** — Security is not a feature, it's a prerequisite

✅ **Defense in depth** — Multiple layers of security controls

✅ **Assume breach** — Design assuming attackers will get in
