# Agents Reference

This document provides detailed information about all 9 agents included in this collection.

---

## Agent Architecture

Agents are defined in two ways:

1. **Inline** in `.opencode/opencode.json` — for quick configuration
2. **File-based** in `.opencode/agents/*.md` — for detailed prompts and version control

Both definitions are synchronized. Edit either source to customize an agent.

---

## Agent Catalog

### 1. Full-Stack Developer (`fullstack-dev`)

**Mode:** Primary (default)
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Frontend: React/Next.js, Vue/Nuxt, Angular, TypeScript, Tailwind CSS
- Backend: Node.js (Express, NestJS, FastAPI), Python (Django, FastAPI), Java (Spring Boot), C# (ASP.NET Core), Go
- Database: PostgreSQL, MySQL, MongoDB, Redis, Prisma, TypeORM, Drizzle
- API: REST, GraphQL, gRPC, WebSocket
- Architecture: Microservices, monorepo, Clean Architecture, SOLID

**Permissions:** `edit: allow`, `bash: git/npm allow, * ask`

---

### 2. Code Reviewer (`code-reviewer`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Code quality analysis (clean code, naming, consistency)
- Security auditing (OWASP Top 10, injection, XSS, CSRF)
- Performance review (N+1 queries, memory leaks, caching)
- Architecture evaluation (SOLID, DRY, KISS, YAGNI)
- Testing coverage assessment
- Error handling review

**Permissions:** `edit: deny`, `read: allow`, `bash: git diff/log only`

---

### 3. DevOps Engineer (`devops-engineer`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Containerization: Docker, multi-stage builds, image optimization
- Orchestration: Kubernetes, Helm, Kustomize
- CI/CD: GitHub Actions, GitLab CI, ArgoCD, Flux
- Cloud: AWS (ECS, EKS, Lambda), GCP (GKE, Cloud Run), Azure (AKS)
- IaC: Terraform, Pulumi
- Monitoring: Prometheus, Grafana, ELK, Datadog, Sentry
- Security: Secrets management, network policies, image scanning

**Permissions:** `edit: allow`, `bash: docker/kubectl/helm/terraform allow`

---

### 4. TDD Developer (`tdd-developer`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Red-Green-Refactor cycle
- Unit, Integration, E2E, Snapshot testing
- Frameworks: Vitest, Jest, Playwright, pytest, JUnit, Go testing, cargo test
- Test coverage: 90%+ unit, 80%+ integration
- Mocking strategies, test seams, anti-pattern detection

**Permissions:** `edit: allow`, `bash: npm test/npx jest/npx vitest allow`

---

### 5. Architect (`architect`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Architecture patterns: Clean Architecture, Hexagonal, Microservices, Event-Driven, CQRS, DDD
- Design principles: SOLID, Separation of Concerns, Dependency Injection
- Codebase design: module structure, dependency management, API design
- Quality attributes: scalability, security, performance, maintainability
- Documentation: ADRs, C4 diagrams, UML, OpenAPI specs

**Permissions:** `edit: deny`, `read: allow`, `bash: ask`

---

### 6. Security Auditor (`security-auditor`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- OWASP Top 10 vulnerability scanning
- Dependency auditing (npm audit, pip audit, cargo audit)
- Secret scanning (API keys, tokens, passwords)
- Authentication & authorization review
- Input validation and data protection
- Network security (TLS, CORS, CSP)
- Reporting with CVSS scores and remediation steps

**Permissions:** `edit: deny`, `read: allow`, `bash: ask`

---

### 7. QA Engineer (`qa-engineer`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- Test planning and test case authoring
- Test automation: Playwright, Cypress, Selenium
- API testing: Postman, Supertest
- Visual regression: Percy, Loki
- Performance testing: k6, Lighthouse
- Accessibility testing (WCAG)
- Bug reporting and regression testing

**Permissions:** `edit: deny`, `bash: ask`

---

### 8. Bug Hunter (`bug-hunter`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- 6-phase diagnosis: reproduce → minimize → hypothesize → instrument → fix → cleanup
- Debugging tools: DevTools, VS Code debugger, strace, tcpdump
- Root cause analysis: 5 Whys, Fishbone diagram, fault tree
- Fix principles: minimum change, regression test first, document root cause

**Permissions:** `edit: allow`, `bash: ask`

---

### 9. Designer (`designer`)

**Mode:** Subagent
**Model:** `anthropic/claude-sonnet-4-6`

**Capabilities:**
- UI/UX: responsive design, color theory, typography, spacing
- Accessibility: WCAG 2.1 AA/AAA
- Design systems: Material Design, Shadcn/ui
- CSS: Tailwind, SCSS, Flexbox, Grid, animations
- Animation: CSS transitions, GSAP, Framer Motion, Apple design principles
- Tools: Figma, Penpot design translation

**Permissions:** `edit: allow`, `bash: ask`

---

## Adding a Custom Agent

To add a new agent, create a file `.opencode/agents/my-agent.md`:

```markdown
---
description: What this agent does.
mode: subagent
model: anthropic/claude-sonnet-4-6
permission:
  edit: deny
  read: allow
  bash: ask
---

You are a specialized agent. Your instructions here...
```

Then register it in `opencode.json`:

```json
{
  "agent": {
    "my-agent": {
      "description": "What this agent does.",
      "mode": "subagent",
      "model": "anthropic/claude-sonnet-4-6"
    }
  }
}
```

Restart OpenCode to apply changes.
