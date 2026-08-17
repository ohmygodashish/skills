# Personalized Learning Planner

## What it does

`personalized-learning-planner` design an optimized, day-by-day personalized curriculum tailored to a specific outcome, baseline knowledge, and time constraints. Rebuilds the path iteratively to ensure the milestone is met.

## When to reach for it

You invoke this by typing `/personalized-learning-planner`.

| Your situation | What `personalized-learning-planner` gives back |
| --- | --- |
| Need to master a skill outcome within specific time constraints | Day-by-day personalized learning path tailored to baseline knowledge |
| Learning milestone adjustments | Iterative path adjustments to guarantee meeting target outcomes |

## Interactive output

Once the curriculum is written, the skill offers, on a single line, to build it as an interactive plan. Decline and nothing is written. Accept and you get one self-contained HTML file in the working directory with a card per day showing the task, its completion criterion, and its guardrail, plus checkboxes whose state persists across reloads and a progress bar against the milestone. The file has no dependencies and works offline.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/learning/personalized-learning-planner/SKILL.md`](../../skills/learning/personalized-learning-planner/SKILL.md).
