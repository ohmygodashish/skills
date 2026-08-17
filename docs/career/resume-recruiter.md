# Resume Recruiter

## What it does

`resume-recruiter` act as a senior recruiter who has scanned 1,000+ live job descriptions for the user's target role. Returns the top keywords most-asked-for, the ones missing from the user's resume, trending skills most candidates aren't including, and buzzwords to cut. Use when the user wants keyword research, a missing-skills analysis, or a recruiter's-eye review of their resume.

## When to reach for it

You invoke this by typing `/resume-recruiter`.

| Your situation | What `resume-recruiter` gives back |
| --- | --- |
| Unsure which keywords top recruiters and job listings expect | Top 15 trending market keywords ranked by frequency and identified missing keywords in your resume |
| Resume feels bloated with low-signal buzzwords | Buzzword removal list and top 5 ranked action items to move from screened-out to shortlist |

## Interactive output

On request only. The skill never offers this and never writes anything by default, because resume text is personal data that stays in the conversation. Ask for an interactive or HTML version and you get one self-contained HTML file holding the analysis: the top 15 keywords as a table filterable by present, missing, or buried, a trending-skills panel, the buzzwords to cut, and the ranked action list. It carries no name, address, phone number, or email, and does not reproduce the resume.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/career/resume-recruiter/SKILL.md`](../../skills/career/resume-recruiter/SKILL.md).
