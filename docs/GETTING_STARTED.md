# Getting Started with OpenCode Skills

## Installation

### Method 1: Clone into your project (Recommended)

```bash
cd /path/to/your/project
git clone https://github.com/your-username/opencode-skills.git .opencode
```

### Method 2: Manual setup

```bash
# Copy the .opencode folder into your project root
cp -r Opencode_skills/.opencode /path/to/your/project/.opencode
```

### Method 3: Merge with existing config

If you already have an `.opencode` folder:

1. Copy the `skills/` directory into your existing `.opencode/`
2. Merge the `agents/` and `commands/` directories
3. Review `opencode.json` and adapt settings to your needs

## Verifying Installation

1. Open a terminal in your project directory
2. Run `opencode`
3. You should see the default agent (`fullstack-dev`) active
4. Type `/help` to see available commands

## First Steps

### 1. Try the agents

Ask OpenCode to switch agents:

```
Use the code-reviewer agent to review the current codebase
```

### 2. Run commands

```
/review
/test
/security
```

### 3. Leverage skills

Skills are automatically loaded. When you work on a relevant task, the corresponding skill activates. For example:

- Working with Google Cloud → GCP skills activate
- Writing tests → TDD skill activates
- Creating UI → Design skills activate

## Customization

### Modifying an agent

Edit the file `.opencode/agents/<agent-name>.md` and restart OpenCode:

```markdown
---
description: Updated description
mode: subagent
model: anthropic/claude-sonnet-4-6
permission:
  edit: allow
  bash: ask
---

Updated prompt instructions...
```

### Adding a new skill

Create `.opencode/skills/my-skill/SKILL.md`:

```markdown
---
name: my-skill
description: What this skill does and when to trigger it.
---

# My Skill

Instructions for the AI model.
```

### Enabling MCP servers

Edit `.opencode/opencode.json`:

```json
{
  "mcp": {
    "playwright": {
      "type": "local",
      "command": ["npx", "-y", "@playwright/mcp"],
      "enabled": true
    }
  }
}
```

## Troubleshooting

### OpenCode doesn't see my skills

- Verify the `.opencode/skills/` directory exists in your project root
- Each skill must be in its own subdirectory with a `SKILL.md` file
- Check that `opencode.json` has `"skills": { "paths": [".opencode/skills"] }`
- Restart OpenCode after making changes

### Config validation errors

Use the escape hatches to fix broken config:

```bash
# Skip project config and start with global config only
OPENCODE_DISABLE_PROJECT_CONFIG=1 opencode

# Load an alternate config
OPENCODE_CONFIG=/path/to/backup.json opencode
```
