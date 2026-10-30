#!/usr/bin/env bash
# SINTELL Agent Skills — copy every skill (a folder with SKILL.md) from the submodules into ~/.claude/skills.
# Existing skills are never overwritten, so nothing gets installed twice.
set -euo pipefail
cd "$(dirname "$0")"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$DEST"
git submodule update --init --depth 1 01-anthropic-skills 02-claude-seo 03-prompt-master 06-instagram-agent-skill 07-day-trader-skill 12-court-skill 2>/dev/null || true

added=0; skipped=0
while IFS= read -r skill_md; do
  dir="$(dirname "$skill_md")"
  name="$(basename "$dir")"
  if [ -e "$DEST/$name" ]; then skipped=$((skipped + 1)); continue; fi
  cp -R "$dir" "$DEST/$name"
  added=$((added + 1))
done < <(find 01-anthropic-skills 02-claude-seo 03-prompt-master 06-instagram-agent-skill 07-day-trader-skill 12-court-skill -name SKILL.md -not -path '*/node_modules/*' 2>/dev/null)

echo "Installed $added skills into $DEST ($skipped already present, left untouched)."
echo "Agents (04-agency-agents) and tools (05, 08-11): see the README inside each folder."
