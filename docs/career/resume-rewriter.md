# Resume Rewriter

## What it does

`resume-rewriter` rewrite every bullet in a resume's experience section using Google's XYZ formula (Accomplished X as measured by Y, by doing Z). Adds metrics, action verbs, and target-role keywords. Use when the user wants to rewrite, sharpen, quantify, or strengthen their resume bullets.

## When to reach for it

You invoke this by typing `/resume-rewriter`.

| Your situation | What `resume-rewriter` gives back |
| --- | --- |
| Resume bullet points lack metrics or impact | Every experience bullet rewritten using Google's XYZ formula (Accomplished X as measured by Y, by doing Z) |
| Need to incorporate target role keywords into experience section | Layered keyword rewrites with before-and-after comparisons |

## Interactive output

On request only. The skill never offers this and never writes anything by default, because resume text is personal data that stays in the conversation. Ask for an interactive or HTML version and you get one self-contained HTML file with every bullet as a before-and-after pair, a copy button per rewritten bullet, and any unverified number flagged as a visible warning rather than buried in the text. It covers the experience section only and carries no name, address, phone number, or email.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/career/resume-rewriter/SKILL.md`](../../skills/career/resume-rewriter/SKILL.md).
