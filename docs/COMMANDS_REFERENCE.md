# Commands Reference

This document describes all 9 custom commands available in this collection.

---

## Command Overview

Commands are shortcuts that trigger specific workflows with predefined agents and prompts. Type any command in your OpenCode session.

| Command | Agent | Description |
|---|---|---|
| `/deploy` | devops-engineer | Build and deploy to production |
| `/test` | qa-engineer | Run tests and analyze results |
| `/review` | code-reviewer | Code review with detailed analysis |
| `/build` | (default) | Project build |
| `/fix` | bug-hunter | Bug diagnosis and fix |
| `/arch` | architect | Architecture consultancy |
| `/design` | designer | UI/UX design generation |
| `/security` | security-auditor | Security audit |
| `/tdd` | tdd-developer | TDD cycle (red-green-refactor) |

---

## Command Details

### /deploy

Triggers the DevOps engineer to build and deploy your project.

**Workflow:**
1. Verify build configuration
2. Prepare Docker image (if applicable)
3. Deploy to production environment
4. Run health checks
5. Verify monitoring

**Usage:**
```
/deploy
/deploy to staging with canary
/deploy version 2.1.0
```

---

### /test

Runs tests and analyzes results with the QA engineer agent.

**Workflow:**
1. Detect test framework
2. Run test suite
3. Analyze failures
4. Report coverage
5. Suggest improvements

**Usage:**
```
/test
/test --coverage
/test specific-test-file.test.ts
```

---

### /review

Performs comprehensive code review with the code reviewer agent.

**Workflow:**
1. Check recent changes (git diff)
2. Evaluate code quality and consistency
3. Security audit
4. Performance analysis
5. Provide actionable recommendations

**Usage:**
```
/review
/review --all (full codebase review)
/review src/components/
```

---

### /build

Builds the project using the appropriate build tool.

**Usage:**
```
/build
/build --production
```

---

### /fix

Diagnoses and fixes bugs using the bug hunter's systematic approach.

**Workflow:**
1. Analyze the bug description
2. Find reproduction steps
3. Identify root cause
4. Write fix
5. Add regression test
6. Verify the fix

**Usage:**
```
/fix login button not working
/fix issue #42
```

---

### /arch

Provides architecture consultancy from the architect agent.

**Workflow:**
1. Analyze requirements
2. Study existing codebase
3. Propose architecture patterns
4. Present pros and cons
5. Generate diagrams if needed

**Usage:**
```
/arch microservices vs monolith
/arch database schema for e-commerce
```

---

### /design

Generates UI/UX designs with the designer agent.

**Workflow:**
1. Analyze requirements
2. Plan layout and structure
3. Write HTML/CSS code
4. Verify responsive design
5. Add animations if requested

**Usage:**
```
/design landing page
/design dark mode toggle
```

---

### /security

Conducts a security audit with the security auditor agent.

**Workflow:**
1. Scan code for vulnerabilities
2. Check dependencies (npm audit, pip audit)
3. OWASP Top 10 assessment
4. Check secrets and configuration
5. Provide remediation recommendations

**Usage:**
```
/security
/security --dependencies-only
```

---

### /tdd

Starts a Test-Driven Development cycle with the TDD developer.

**Workflow:**
1. Identify test cases
2. **RED**: Write failing test
3. **GREEN**: Write minimal passing code
4. **REFACTOR**: Clean up the code
5. Move to next test case

**Usage:**
```
/tdd user authentication
/tdd shopping cart total calculation
```

---

## Adding a Custom Command

Create a file `.opencode/commands/my-command.md`:

```markdown
---
description: What this command does.
agent: my-agent
---

Your command template. Use $ARGUMENTS for user input.
$ARGUMENTS
```

Restart OpenCode to register the command.
