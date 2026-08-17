# Handoff

## What it does

`handoff` compact the current conversation and session context into a structured handoff document for the next AI agent session.

## When to reach for it

You invoke this by typing `/handoff`.

| Your situation | What `handoff` gives back |
| --- | --- |
| Ending a session or switching agents | Compact conversation, diffs, and open tasks into `.agents/handoff/<theme>-handoff.md` |
| Clearing chat history to free context window | Generates a copy-pasteable Kickstart Prompt directly in the chat window to resume work in a new chat |

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/engineering/handoff/SKILL.md`](../../skills/engineering/handoff/SKILL.md).
