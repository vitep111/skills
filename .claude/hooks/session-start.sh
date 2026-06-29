#!/bin/bash
set -euo pipefail

echo '{"async": true, "asyncTimeout": 60000}'

SKILLS_DIR="$CLAUDE_PROJECT_DIR/skills"
TARGET_DIR="$HOME/.claude/skills"

mkdir -p "$TARGET_DIR"

cp -r "$SKILLS_DIR/productivity/grill-me"       "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/grilling"        "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/handoff"         "$TARGET_DIR/"
cp -r "$SKILLS_DIR/productivity/teach"           "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/grill-with-docs"  "$TARGET_DIR/"
cp -r "$SKILLS_DIR/engineering/domain-modeling"  "$TARGET_DIR/"
