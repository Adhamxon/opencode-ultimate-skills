# Contributing to OpenCode Skills

Thank you for your interest in contributing! Here's how you can help.

## Adding a New Skill

1. Create a new folder under `.opencode/skills/<skill-name>/`
2. Add a `SKILL.md` file with proper frontmatter:

```markdown
---
name: my-skill
description: One sentence describing what this skill does AND when to trigger it.
---

# My Skill

Detailed instructions for the AI model.
```

3. Test by restarting OpenCode in a project that includes this repository
4. Submit a Pull Request

## Skill Naming Conventions

- Use lowercase, hyphen-separated names (e.g., `my-awesome-skill`)
- Prefix community-sourced skills with their origin (e.g., `matt-`, `gcp-`, `anim-`, `copilot-`)
- Keep names descriptive but concise (under 64 characters)

## Agent Guidelines

- Agents should have clear, single responsibilities
- Define appropriate permission boundaries for each agent
- Include both inline config (in `opencode.json`) and file-based definitions (in `.opencode/agents/`)
- Each agent needs a `description` field for discoverability

## Code of Conduct

- Be respectful and inclusive
- Focus on what is best for the community
- Provide constructive feedback on pull requests

## Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-skill`)
3. Commit your changes (`git commit -m 'Add my-skill: description'`)
4. Push to the branch (`git push origin feature/my-skill`)
5. Open a Pull Request with a clear description of the change
