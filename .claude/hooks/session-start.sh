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

cp -r "$SKILLS_DIR/productivity/grill-me"       "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/grilling"        "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/handoff"         "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/teach"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/grill-with-docs"  "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/domain-modeling"  "$TARGET_DIR/"
