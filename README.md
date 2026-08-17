# Agent Skills Repository

[![skills.sh](https://skills.sh/b/ohmygodashish/skills)](https://skills.sh/ohmygodashish/skills)

Curated AI agent skills for **engineering**, **learning**, **career**, **finance**, and **productivity**. Easily installable across AI coding agents (Cursor, Claude Code, Copilot, Cline, Antigravity, etc.) using `npx skills`.

---

## Quickstart & Installation

Install skills directly into your project using the standard `npx skills` CLI:

### 1. Install All Skills
```bash
npx skills@latest add ohmygodashish/skills --all
```

### 2. Interactive Selection
```bash
npx skills@latest add ohmygodashish/skills
```

### 3. Install a Specific Skill
```bash
npx skills@latest add ohmygodashish/skills --skill=<name>
```

### 4. Update Installed Skills
```bash
npx skills@latest update <name>
```

---

## Maintainer & Development Utilities

If you clone or fork this repository to develop/test your own skills locally:

### 1. List All Skills & Descriptions
```bash
./scripts/list-skills.sh
```

### 2. Symlink Skills to Local Agent Directories
```bash
# Preview what would be linked, without touching the filesystem
./scripts/link-skills.sh --dry-run

# Link all skills to global agent folders (~/.claude/skills and ~/.agents/skills)
./scripts/link-skills.sh

# Or link all skills directly into a specific project
./scripts/link-skills.sh /path/to/my-project/.agents/skills
```

The script only ever replaces symlinks. If a destination entry is a real directory, it is reported and skipped rather than deleted. This is common after installing with `npx skills add`, which copies real files into `~/.claude/skills/`; expect a `REFUSING` line per skill in that case. Pass `--force` to replace those directories, which permanently removes them. Run `--dry-run` first if you are unsure what a destination contains.

---

## Available Skills Index

### Engineering
| Skill | Description | Doc | Skill Spec |
| :--- | :--- | :--- | :--- |
| **`create-specification`** | Generate comprehensive technical software specifications and system design docs | [`docs`](./docs/engineering/create-specification.md) | [`SKILL.md`](./skills/engineering/create-specification/SKILL.md) |
| **`handoff`** | Compact current session into structured `.agents/handoff/<theme>-handoff.md` with kickstart prompts | [`docs`](./docs/engineering/handoff.md) | [`SKILL.md`](./skills/engineering/handoff/SKILL.md) |

---

### Learning
| Skill | Description | Doc | Skill Spec |
| :--- | :--- | :--- | :--- |
| **`core-concept-deconstruction`** | Deconstruct complex topics into first principles | [`docs`](./docs/learning/core-concept-deconstruction.md) | [`SKILL.md`](./skills/learning/core-concept-deconstruction/SKILL.md) |
| **`exam-notes-generator`** | Generate targeted study guides and flashcard notes | [`docs`](./docs/learning/exam-notes-generator.md) | [`SKILL.md`](./skills/learning/exam-notes-generator/SKILL.md) |
| **`knowledge-gap-audit`** | Identify and bridge hidden knowledge gaps | [`docs`](./docs/learning/knowledge-gap-audit.md) | [`SKILL.md`](./skills/learning/knowledge-gap-audit/SKILL.md) |
| **`live-feynman-auditor`** | Audit real-time conceptual understanding using the Feynman Technique | [`docs`](./docs/learning/live-feynman-auditor.md) | [`SKILL.md`](./skills/learning/live-feynman-auditor/SKILL.md) |
| **`logic-flaw-simulator`** | High-stakes practical scenario simulation to expose logic flaws | [`docs`](./docs/learning/logic-flaw-simulator.md) | [`SKILL.md`](./skills/learning/logic-flaw-simulator/SKILL.md) |
| **`personalized-learning-planner`** | Day-by-day milestone-based curriculum planner | [`docs`](./docs/learning/personalized-learning-planner.md) | [`SKILL.md`](./skills/learning/personalized-learning-planner/SKILL.md) |
| **`time-constrained-learning`** | Fast-track practical competence within a tight timeline | [`docs`](./docs/learning/time-constrained-learning.md) | [`SKILL.md`](./skills/learning/time-constrained-learning/SKILL.md) |

---

### Career
| Skill | Description | Doc | Skill Spec |
| :--- | :--- | :--- | :--- |
| **`resume-diagnoser`** | ATS-style diagnostic scan & top 5 impact fixes | [`docs`](./docs/career/resume-diagnoser.md) | [`SKILL.md`](./skills/career/resume-diagnoser/SKILL.md) |
| **`resume-hiring-manager`** | Realistic mock interview with scoring & hireability feedback | [`docs`](./docs/career/resume-hiring-manager.md) | [`SKILL.md`](./skills/career/resume-hiring-manager/SKILL.md) |
| **`resume-recruiter`** | Market keyword research & missing skill analysis | [`docs`](./docs/career/resume-recruiter.md) | [`SKILL.md`](./skills/career/resume-recruiter/SKILL.md) |
| **`resume-rewriter`** | Rewrite resume bullets using Google's XYZ formula | [`docs`](./docs/career/resume-rewriter.md) | [`SKILL.md`](./skills/career/resume-rewriter/SKILL.md) |

---

### Finance
| Skill | Description | Doc | Skill Spec |
| :--- | :--- | :--- | :--- |
| **`stock-research-executor`** | 8-phase fundamental due diligence & investment research reports | [`docs`](./docs/finance/stock-research-executor.md) | [`SKILL.md`](./skills/finance/stock-research-executor/SKILL.md) |
| **`stock-shortlist-agent`** | Multi-agent parallel stock screening & shortlist generator | [`docs`](./docs/finance/stock-shortlist-agent.md) | [`SKILL.md`](./skills/finance/stock-shortlist-agent/SKILL.md) |

---

### Productivity
| Skill | Description | Doc | Skill Spec |
| :--- | :--- | :--- | :--- |
| **`humanizer`** | Humanize AI writing style to sound natural and engaging | [`docs`](./docs/productivity/humanizer.md) | [`SKILL.md`](./skills/productivity/humanizer/SKILL.md) |
| **`presentation-speaker`** | Format text into engaging spoken presentation style | [`docs`](./docs/productivity/presentation-speaker.md) | [`SKILL.md`](./skills/productivity/presentation-speaker/SKILL.md) |
