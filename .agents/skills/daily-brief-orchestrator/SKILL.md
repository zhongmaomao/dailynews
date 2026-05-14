---
name: daily-brief-orchestrator
description: Coordinate a five-part daily news brief for internet and AI frontier, GitHub hot projects, politics and economy, basic science, and one indie game. Use when generating or updating a structured daily brief from multiple topical collectors while keeping sourcing open, freshness explicit, and duplication low.
---

# Daily Brief Orchestrator

Use this skill when the task is to assemble the full daily brief, not when only one section is needed.

## Goal

Produce one Markdown daily brief with these sections:

1. Internet + AI frontier: 3 items
2. GitHub hot projects: 2 items
3. Politics / economy: 2 items
4. Basic science: 1 item
5. Indie game: 1 item

The output should feel curated, timely, and readable. It should not read like a rigid report template filled by force.

## Operating Style

- Treat the five section skills as collectors, not as hard gates.
- Prefer openness over brittle rules: if one source family is quiet, widen the search before lowering quality.
- Be explicit about freshness. If an item is not strictly from the last 24 hours, say so.
- Avoid duplication across sections. If an item could fit in two places, keep it where it is most useful and replace the weaker duplicate.
- Prefer a small number of high-signal items over padding with weak ones.

## Workflow

1. Gather today’s date and the user’s timezone if available.
2. If useful, run `scripts/brief-source-urls.sh` to get a lightweight set of source entry points and search prompts.
3. Run the five topical skills or follow their guidance manually.
4. Normalize all candidates into a common shape:
   - title
   - why it matters
   - date or freshness note
   - source links
   - confidence
5. Remove duplicates by topic, not only by URL.
6. Check section counts. If a section is thin, use that section’s fallback rules rather than inventing weak news.
7. Write the final `YYYY-MM-DD.md`.
8. End with a short “观察” or “Brief take” only if it adds signal.

## Freshness Rules

- Default target window: last 24 hours.
- Accept last 48 hours if that materially improves quality.
- Accept “within the past week and still actively discussed” only when near-day public sources are thin. Mark this clearly.
- Never imply same-day freshness if you did not verify it.

## Writing Rules

- Use short section intros only when helpful.
- Each item should answer:
  - what happened
  - why it matters
  - why it belongs in this section
- Link sources directly.
- Prefer two or more sources for contested or high-stakes items.
- Avoid false precision. If a ranking or trend count is approximate, say “about” or describe it qualitatively.

## Output Shape

Use this structure unless the user already has a house style:

```md
# 每日快报｜YYYY-MM-DD

统计时间：...
说明：...

## 1、互联网 + AI 技术前沿发展要闻（3条）
### 1. ...
- ...
- 来源：...

## 2、GitHub 近期热点项目（2个）
...
```

## Fallback Logic

- If one section lacks enough high-quality items, keep the section but note the scarcity rather than stuffing low-quality entries.
- If all sections are strong except one, preserve the overall brief quality. A clean “1 strong item + note” is better than weak filler.

## References

For aggregation patterns worth borrowing, read [references/news-aggregation-patterns.md](references/news-aggregation-patterns.md).
For quick source entry points, run [`scripts/brief-source-urls.sh`](scripts/brief-source-urls.sh).
