---
type: llm
focus: trace
weight: 1
---

Each agent file contains a comment line starting `orchestrator-setup catalog` with `role=` and a 12-character `sha=`, placed inside the frontmatter, and the sha matches a 256-bit SHA digest of the prompt text written in that file.
