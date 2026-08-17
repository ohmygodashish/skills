---
name: handoff
description: Compact the current conversation and session context into a structured handoff document for the next AI agent session.
argument-hint: "[goal or focus of the next session]"
disable-model-invocation: true
---

# Handoff

Use this skill when ending a session, transitioning work to another agent, or saving session context before clearing chat history.

## Objective
Synthesize the current conversation, architectural decisions, and open tasks into a comprehensive handoff markdown document saved to `.agents/handoff/<theme-slug>-handoff.md`, and output a ready-to-copy kickstart prompt directly in the chat window.

---

## File Naming & Target Location

- **Directory**: `.agents/handoff/` (create directory if it does not exist).
- **Filename Pattern**: `.agents/handoff/<theme-slug>-handoff.md`
  - Derive `<theme-slug>` in kebab-case from the user's argument (e.g., `"refactor auth system"` -> `refactor-auth-system-handoff.md`).
  - If no argument is provided, derive a 2-4 word kebab-case summary of the primary theme or next goal (e.g., `database-migration-handoff.md`).

---

## Next Session Goal Determination

- **If Argument Provided**: Treat the argument as the explicit goal for the next session.
- **If No Argument Provided**: Automatically infer the next goal from remaining open tasks, uncompleted checklist items, or unresolved issues in the current session without prompting for input.

---

## Required Document Structure (Saved to File)

The generated handoff file saved to `.agents/handoff/<theme-slug>-handoff.md` MUST contain the following sections:

### 1. Header & Context
- **Timestamp**: Date and time of session transition.
- **Session Focus**: Summary of what was accomplished in this session.
- **Next Session Goal**: Target focus for the incoming agent (from argument or auto-inferred).

### 2. Executive Summary
- Concise 2-3 paragraph synthesis of major progress, key accomplishments, and current codebase status.

### 3. Modified Files & Component Changes
- Table or list of created, modified, or deleted files using clickable markdown links (e.g., [`path/to/file`](file:///path/to/file)).
- Summary of changes per component (avoid dumping massive diffs).

### 4. Architectural Decisions & Technical Context
- Key technical decisions, trade-offs, or constraints established during the session.
- References to existing specs, plans, ADRs, or PRs by path or URL instead of copying content.

### 5. Open Tasks, Blockers & Pitfalls
- Actionable checklist of remaining work items for the incoming agent.
- Known technical debt, failing tests, edge cases, or potential pitfalls to watch out for.

### 6. Recommended Agent Skills & Tools
- List specific AI skills (e.g. `/plan`, `create-specification`, `resume-diagnoser`) or tools the incoming agent should execute first.

---

## Chat Output Instructions (Direct Chat Window Output)

After saving the handoff document to `.agents/handoff/<theme-slug>-handoff.md`, the agent MUST display a ready-to-copy **Kickstart Prompt for Next Agent** block directly in the chat/agent response window so the user can immediately copy it without opening the file:

```text
I am continuing work from a previous session. Please read the handoff document at .agents/handoff/<theme-slug>-handoff.md and invoke the recommended skills before taking action. Our goal for this session is: [Next Goal]
```

---

## Safety & Efficiency Rules

1. **Redaction**: Automatically redact any sensitive credentials, API keys, bearer tokens, or PII.
2. **No Duplication**: Reference existing artifacts, specs, plans, and commits by relative path or URL rather than pasting full text blocks.
3. **Frictionless Execution**: Do not prompt the user for additional inputs during handoff; execute immediately upon invocation.
