# OpenCode Skills — Ultimate Agent Skill Collection

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![OpenCode](https://img.shields.io/badge/OpenCode-Ready-6C47FF)](https://opencode.ai)

A comprehensive, production-ready collection of **112 curated skills**, **9 specialized agents**, and **9 custom commands** for [OpenCode](https://opencode.ai) — the AI-powered coding assistant.

---

## Features

- **112 Pre-installed Skills** — Curated from top community collections (Anthropic, Matt Pocock, Google Cloud, animation experts, and more)
- **9 Specialized Agents** — Full-stack developer, code reviewer, DevOps engineer, TDD practitioner, architect, security auditor, QA engineer, bug hunter, UI/UX designer
- **9 Custom Commands** — Quick-access commands for review, deploy, test, fix, design, security audit, and architecture planning
- **Multi-language Support** — TypeScript, Python, Java, C#, Go, Rust, Kotlin, Swift, and more
- **Multi-cloud Ready** — GCP (GKE, Cloud Run, BigQuery, Spanner), Azure, AWS patterns
- **Zero-config Setup** — Drop into any project and OpenCode auto-discovers everything

---

## Quick Start

### Prerequisites

- [OpenCode](https://opencode.ai) installed

### Installation

```bash
# Clone this repository into your project
git clone https://github.com/Adhamxon/opencode-ultimate-skills.git .opencode

# Or copy manually into your project
cp -r opencode-ultimate-skills/.opencode /path/to/your/project/.opencode

# Restart OpenCode for changes to take effect
```

OpenCode automatically discovers the `.opencode/` directory. No additional configuration needed.

---

## Usage

### Agents

Switch between agents during your OpenCode session:

| Agent | Description | Permission |
|---|---|---|
| `fullstack-dev` | Frontend + Backend + Database development | edit: allow, bash: git/npm allow |
| `code-reviewer` | Code quality, security, performance review | edit: deny, read-only |
| `devops-engineer` | CI/CD, Docker, Kubernetes, Cloud | docker/kubectl allow |
| `tdd-developer` | Test-Driven Development cycle | npm test allow |
| `architect` | Domain modeling, codebase design, patterns | read-only |
| `security-auditor` | OWASP, dependency audit, secret scanning | read-only |
| `qa-engineer` | E2E testing, test plans, Playwright | deny edit |
| `bug-hunter` | Bug diagnosis, root cause analysis, fix | edit: allow |
| `designer` | UI/UX, animation, responsive CSS | edit: allow |

### Commands

Quick commands available in your OpenCode session:

```
/review     — Code review with detailed analysis
/deploy     — Build and deploy to production
/test       — Run tests and analyze coverage
/fix        — Diagnose and fix bugs
/build      — Build the project
/arch       — Architecture consultancy
/design     — UI/UX design generation
/security   — Security audit
/tdd        — Start TDD cycle (red-green-refactor)
```

### Agents via OpenCode config

Agents are defined both inline in `opencode.json` and as individual Markdown files in `.opencode/agents/`. You can customize any agent by editing its `.md` file or overriding fields in `opencode.json`.

---

## Skills Catalog

The collection includes **112 skills** organized by source:

### Anthropic Skills (16)
`claude-api` · `mcp-builder` · `skill-creator` · `webapp-testing` · `frontend-design` · `theme-factory` · `brand-guidelines` · `canvas-design` · `algorithmic-art` · `xlsx` · `pptx` · `docx` · `pdf-anthropic` · `internal-comms` · `doc-coauthoring` · `web-artifacts-builder`

### Matt Pocock Engineering Skills (22)
`matt-code-review` · `matt-tdd` · `matt-diagnosing-bugs` · `matt-domain-modeling` · `matt-implement` · `matt-research` · `matt-prototype` · `matt-wayfinder` · `matt-triage` · `matt-to-spec` · `matt-to-tickets` · `matt-codebase-design` · `matt-resolving-merge-conflicts` · `matt-improve-codebase-architecture` · `matt-writing-great-skills` · `matt-teach` · `matt-handoff` · `matt-grilling` · `matt-setup-pre-commit` · `matt-git-guardrails` · `matt-scaffold-exercises` · `matt-migrate-to-shoehorn`

### Curated Skills (25)
`figma` · `figma-code-connect-components` · `figma-create-design-system-rules` · `figma-create-new-file` · `figma-generate-design` · `figma-implement-design` · `figma-use` · `playwright` · `playwright-interactive` · `vercel-deploy` · `netlify-deploy` · `cli-creator` · `security-best-practices` · `security-threat-model` · `sentry` · `linear` · `screenshot` · `speech` · `define-goal` · `yeet` · `sys-openai-docs` · `sys-skill-creator` · `sys-skill-installer` · `pdf` · `code-review` (full multi-language)

### Animation Skills (8)
`anim-animation-vocabulary` · `anim-apple-design` · `anim-emil-design-eng` · `anim-find-animation-opportunities` · `anim-improve-animations` · `anim-pick-ui-library` · `anim-prototype` · `anim-review-animations`

### Google Cloud Skills (17)
`gcp-gke-basics` · `gcp-cloud-run-basics` · `gcp-bigquery-basics` · `gcp-bigquery-ai-ml` · `gcp-cloud-storage-basics` · `gcp-cloud-sql-basics` · `gcp-spanner-basics` · `gcp-alloydb-basics` · `gcp-firebase-basics` · `gcp-gemini-api` · `gcp-gemini-agents-api` · `gcp-gcloud` · `gcp-cloud-logging-configuration-basics` · `gcp-workload-manager-basics` · `gcp-datalineage-summary` · `gcp-google-cloud-waf-security` · `gcp-detection-engineering-coverage-evaluation`

### Copilot Community Skills (24)
`copilot-cli-mastery` · `copilot-codeql` · `copilot-conventional-commit` · `copilot-diagnose` · `copilot-draw-io-diagram-generator` · `copilot-git-commit` · `copilot-github-actions-efficiency` · `copilot-mcp-cli` · `copilot-postgresql-optimization` · `copilot-postgresql-code-review` · `copilot-sql-optimization` · `copilot-sql-server-table-reconciliation` · `copilot-security-review` · `copilot-typescript-mcp-server-generator` · `copilot-python-mcp-server-generator` · `copilot-java-springboot` · `copilot-csharp-async` · `copilot-dotnet-best-practices` · `copilot-azure-architecture-autopilot` · `copilot-terraform-azurerm-set-diff-analyzer` · `copilot-react-audit-grep-patterns` · `copilot-playwright-generate-test` · `copilot-architecture-blueprint-generator` · `copilot-create-implementation-plan`

---

## Configuration

The main configuration file is `.opencode/opencode.json`. Key settings:

```jsonc
{
  "$schema": "https://opencode.ai/config.json",
  "model": "anthropic/claude-sonnet-4-6",
  "default_agent": "fullstack-dev",
  "skills": {
    "paths": [".opencode/skills"]
  },
  "permission": {
    "edit": "allow",
    "bash": { "git *": "allow", "npm *": "allow", "npx *": "allow", "*": "ask" }
  }
}
```

See [docs/GETTING_STARTED.md](docs/GETTING_STARTED.md) for detailed configuration guide.

---

## Project Structure

```
Opencode_skills/
├── .opencode/                        # Auto-discovered by OpenCode
│   ├── opencode.json                 # Main configuration
│   ├── agents/                       # 9 agent definitions
│   ├── commands/                     # 9 command definitions
│   ├── skills/                       # 112 skill folders
│   ├── plugins/                      # Extensible plugin directory
│   └── references/                   # Reference materials
├── docs/                             # Documentation
│   ├── GETTING_STARTED.md
│   ├── SKILLS_REFERENCE.md
│   ├── AGENTS_REFERENCE.md
│   └── COMMANDS_REFERENCE.md
├── scripts/                          # Setup & utility scripts
│   └── setup.ps1
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── LICENSE
└── .gitignore
```

---

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## License

[MIT](LICENSE) — Free for personal and commercial use.

**Attribution Required:** If you use, modify, or distribute this work, you must include the original copyright notice:
```
Copyright (c) 2026 Adkhamkhon
```
See [LICENSE](LICENSE) for full terms.

---

## Acknowledgments

- [Anthropic](https://anthropic.com) — Official Claude skills collection
- [Matt Pocock](https://github.com/mattpocock) — Engineering workflow skills
- [Google Cloud](https://cloud.google.com) — Cloud product skills
- [Awesome GitHub Copilot](https://github.com/awesome-github-copilot) — Community skills collection
- [Code Review Skill](https://github.com/Adhamxon/opencode-ultimate-skills) — Multi-language review guides
