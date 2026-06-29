#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"
npm install

SKILLS_DIR="$CLAUDE_PROJECT_DIR/skills"
TARGET_DIR="$HOME/.claude/skills"

mkdir -p "$TARGET_DIR"

cp -r "$SKILLS_DIR/engineering/ask-matt"                  "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/diagnosing-bugs"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/grill-with-docs"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/triage"                    "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/improve-codebase-architecture" "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/setup-matt-pocock-skills"  "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/tdd"                       "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/to-issues"                 "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/to-prd"                    "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/prototype"                 "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/domain-modeling"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/codebase-design"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/rpa-bot-dev"               "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/grill-me"                 "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/grilling"                 "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/handoff"                  "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/teach"                    "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/writing-great-skills"     "$TARGET_DIR/"
