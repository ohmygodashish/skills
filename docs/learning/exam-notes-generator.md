# Exam Notes Generator

## What it does

`exam-notes-generator` generates high-yield, structured university exam preparation notes from a provided syllabus. Use when a student supplies a syllabus and needs comprehensive descriptive notes optimized for 5-marker questions by default or else MCQ questions if mentioned explicitly, covering every topic and sub-topic without exception.

## When to reach for it

You invoke this by typing `/exam-notes-generator`.

| Your situation | What `exam-notes-generator` gives back |
| --- | --- |
| Syllabus provided and exam preparation notes needed | Comprehensive sub-topic notes optimized for 5-marker questions, definitions, formulae, and MCQs |
| Studying for university-level descriptive or technical exams | Syllabus-aligned structured notes formatted for rapid retention |

## Interactive output

Once the notes are written, the skill offers, on a single line, to build them as an interactive study page. Decline and nothing is written. Accept and you get one self-contained HTML file in the working directory with topic navigation, collapsible notes, a flashcard mode, and a self-scoring quiz built from the MCQs already generated for each topic. The file has no dependencies and works offline.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/learning/exam-notes-generator/SKILL.md`](../../skills/learning/exam-notes-generator/SKILL.md).
