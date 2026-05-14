#!/usr/bin/env bash
set -euo pipefail

today="${1:-$(date +%Y-%m-%d)}"

cat <<EOF
# Daily brief source hints
# target date: ${today}

## AI frontier
https://openai.com/index/
https://www.anthropic.com/news
https://blog.google/technology/ai/
https://huggingface.co/blog
https://techcrunch.com/category/artificial-intelligence/
https://www.theverge.com/ai-artificial-intelligence
https://www.reuters.com/technology/

## GitHub hot
https://github.com/trending
https://github.com/topics/artificial-intelligence
https://github.com/topics/agent
https://github.com/topics/developer-tools

## Politics and economy
https://www.reuters.com/world/
https://www.reuters.com/business/
https://apnews.com/hub/business
https://apnews.com/world-news
https://english.www.gov.cn/policies/latestreleases/
https://english.news.cn/
https://www.imf.org/en/News

## Basic science
https://www.nature.com/nature/research-articles
https://www.science.org/journal/science
https://www.cell.com/
https://phys.org/
https://www.eurekalert.org/

## Indie game
https://store.steampowered.com/search/?sort_by=Released_DESC&category1=998
https://store.steampowered.com/curator/33028765-Rock-Paper-Shotgun/
https://www.rockpapershotgun.com/games
https://www.pcgamer.com/tag/indie/
https://itch.io/games/new-and-popular

## Suggested search prompts
"AI announcement last 24 hours official blog"
"GitHub trending developer tools today"
"Reuters China economy latest 24 hours"
"Nature Science biology physics discovery latest"
"new indie game Steam released this week"
EOF
