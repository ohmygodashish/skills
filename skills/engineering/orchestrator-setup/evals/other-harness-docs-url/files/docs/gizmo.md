# Gizmo agents (documentation)

Gizmo is a coding assistant. Last updated in this document: not dated.

## Defining agents
Agents are JSON files, one per agent. Project agents live in `.gizmo/agents/<name>.json`. User agents live in `~/.gizmo/agents/<name>.json`. Project wins on a name clash.

Fields:
- `name` (required), `description` (required), `instructions` (required): the system prompt text.
- `deny_tools`: list of tool names the agent may not use. Tools: `read`, `search`, `shell`, `write`, `edit`.
- `model`: one of the values the `gizmo models` command prints, or `inherit`.
- `effort`: `low`, `medium` or `high`. Not every model supports every level.
- JSON has no comments. To mark a file, use the `notes` field, which is ignored by Gizmo.

## Models
Run `gizmo models` to print the models your account can use, one per line with a short purpose. Example output:

    swift      quick and cheap, for simple tasks
    steady     everyday coding
    deep       deepest reasoning, for the hardest problems

The names above are a sample; your account may differ. The value `inherit` uses the session's model.

## Instructions file
Gizmo reads `GIZMO.md` in the project root, read once at session start. It cannot import other files.

## Loading
New agent files are picked up on the next session start.

## Non-interactive
`gizmo run --readonly "<prompt>"` runs one prompt without changes.
