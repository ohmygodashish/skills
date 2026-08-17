# The Canonical Install Block

One install story, one wording. `README.md` and every page under `docs/` must follow this single canonical installation guide.

## Installing Skills via skills.sh

[skills.sh](https://skills.sh/ohmygodashish/skills) copies editable skill files into your project across AI coding agents (Cursor, Claude Code, Copilot, Cline, Antigravity, etc.).

### Whole-Set Installation (All Skills)

<canonical-block name="skills-sh-whole-set">

```bash
npx skills@latest add ohmygodashish/skills
```

Pick the skills you want, and which coding agents to install them on.

</canonical-block>

### Single-Skill Installation

Use the single-skill form when targeting a specific skill:

<canonical-block name="skills-sh-one-skill">

```bash
npx skills@latest add ohmygodashish/skills --skill=<name>
```

```bash
npx skills@latest update <name>
```

</canonical-block>

`skills@latest` is the pinned spelling for installer commands. Pages under `docs/` should not duplicate these install commands across individual documentation files; keep them centralized here and in `README.md`.
