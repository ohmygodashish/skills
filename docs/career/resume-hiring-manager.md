# Resume Hiring Manager

## What it does

`resume-hiring-manager` conduct a realistic mock interview as the actual hiring manager for the user's target role. Asks the hardest technical and behavioural questions, rates answers out of 10, and gives a final hireability score plus a study plan. Use when the user wants interview prep, a mock interview, practice questions, or to rehearse before a real interview.

## When to reach for it

You invoke this by typing `/resume-hiring-manager`.

| Your situation | What `resume-hiring-manager` gives back |
| --- | --- |
| Preparing for a high-stakes technical or behavioral interview | Realistic 30-minute mock interview with 5 technical questions, 3 STAR questions, and scoring out of 10 |
| Wanting honest feedback before real interviews | Final hireability score out of 100, weakest answer breakdown, and targeted study plan |

## Interactive output

On request only, and only after the interview has finished. The skill never offers this and never writes anything by default. Ask for an interactive or HTML version and you get one self-contained HTML file holding the debrief alone: the hireability score against its band, the three weakest answers paraphrased, the three questions to rehearse, and the study plan as a checklist. The interview transcript is never written, and the file carries no name, address, phone number, or email.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/career/resume-hiring-manager/SKILL.md`](../../skills/career/resume-hiring-manager/SKILL.md).
