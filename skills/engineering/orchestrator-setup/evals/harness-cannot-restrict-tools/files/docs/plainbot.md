# Plainbot agents (documentation)

Plainbot supports named helper agents.

## Defining agents
Create `.plainbot/helpers/<name>.md`. The file is Markdown with a short header:

    name: <name>
    summary: <one line, when to use it>
    model: <value, optional>

Everything after the first blank line is the helper's system prompt. Lines starting with `;;` anywhere in the file are ignored by Plainbot (use them for comments).

## Tools
Every helper has every tool the main session has. There is no way to allow or deny tools per helper, and no permission rules.

## Models
Plainbot has one setting per helper, `model`. Valid values are listed by `plainbot --list-models`, which prints one name and one purpose per line. If `model` is left out the helper uses the main session's model. There is no effort setting.

## Instruction file
Plainbot reads `PLAINBOT.md` in the project root at session start. It cannot import other files.

## Loading
Helpers are loaded when a session starts.
