# Resume Diagnoser

## What it does

`resume-diagnoser` diagnose a resume the way a real applicant tracking system (ATS) would. Flags formatting issues, weak sections, missing signals, and ranks the top 5 fixes by impact. Use when the user asks to diagnose, audit, scan, or fix their resume, or asks why their resume isn't getting interviews.

## When to reach for it

You invoke this by typing `/resume-diagnoser`.

| Your situation | What `resume-diagnoser` gives back |
| --- | --- |
| Resume getting auto-rejected by ATS software | ATS-killer scan, layout audit, missing signal breakdown, and top 5 ranked impact fixes |
| Weak bullet points or low interview callbacks | Section-by-section audit with quote-level critiques and before-and-after bullet rewrites |

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/career/resume-diagnoser/SKILL.md`](../../skills/career/resume-diagnoser/SKILL.md).
