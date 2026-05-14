# News Aggregation Patterns

These are reference notes, not mandatory implementation rules.

## Useful Patterns Seen in GitHub Projects

From `duanyytop/agents-radar`:

- Multi-source collection works better than single-feed collection.
- Topic groups should be configurable, not hardcoded into one fetch loop.
- Trending and official-source monitoring can coexist.
- Incremental state and “skip when nothing changed” are useful for recurring automation.

From `00sapo/better-morning`:

- Collection-oriented design is high leverage.
- Fetch, extract, filter, summarize, then assemble is a sensible flow.
- Per-collection fallbacks and failure handling matter more than perfect extraction.
- Source failure rates can be tracked without banning whole source families permanently.

## What To Avoid

- A frozen source whitelist that blocks discovery of new outlets.
- “Exact 24h only” logic that forces weak items when the day is slow.
- Overfitting to RSS. Many high-value signals come from official blogs, release notes, GitHub activity, store pages, and science journals.
- Treating the pipeline as deterministic. News selection is editorial, not purely mechanical.

## Recommended Attitude

- Start from trusted sources, then widen when needed.
- Keep selection criteria visible and revisable.
- Preserve editorial judgment.
- Prefer explainable curation over opaque scoring.
