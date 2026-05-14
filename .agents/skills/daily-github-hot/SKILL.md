---
name: daily-github-hot
description: Collect 2 recent GitHub hot projects for a daily brief, using GitHub Trending, search, releases, and community momentum as signals. Use when identifying notable open-source projects without reducing the task to a single ranking page.
---

# Daily GitHub Hot

Use this skill to produce the `GitHub 近期热点项目` section.

## Goal

Pick 2 projects that are genuinely worth attention today, not just mathematically high on one list.

## Source Strategy

Use multiple signals:

- GitHub Trending
- GitHub Search for recently active repos
- release activity
- issue / PR discussion
- cross-platform discussion if needed

Treat GitHub Trending as a lead source, not the whole answer.

## Selection Heuristics

Prefer projects that have at least one of these qualities:

- unusual growth
- clear usefulness
- strong developer curiosity
- new release that changes adoption potential
- reflects a broader ecosystem shift

Try to avoid picking two projects that are near-clones.

## What Counts As “Hot”

Any combination of:

- high recent stars
- sustained activity over the last few days
- release momentum
- strong issue / PR attention
- repeated mentions in relevant developer circles

## Output Format

For each project include:

- repo name
- one-sentence description in plain language
- why it is hot now
- why it matters beyond vanity metrics
- source links

## Openness Rule

Do not constrain selection to AI-only repos unless the brief itself requires it. If a non-AI tool is clearly becoming important for developers, it can qualify.
