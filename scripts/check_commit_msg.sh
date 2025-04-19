#!/bin/bash

commit_msg_file=$1

# Убираем комментарии (#, #:, # что угодно), затем берём первую непустую строку
commit_msg=$(grep -vE '^\s*#' "$commit_msg_file" | sed '/^\s*$/d' | head -n 1)

pattern='^(feat|fix|docs|style|refactor|perf|test|chore|ci|build|revert)(\([a-zA-Z0-9_\-]+\))?: .+'

if [[ ! "$commit_msg" =~ $pattern ]]; then
  echo "⛔ Commit message does not follow Conventional Commits!"
  echo "💡 Example: feat(cv): add CV section"
  echo "👉 Format: <type>(<scope>): <short description>"
  echo "📘 Allowed types: feat, fix, docs, style, refactor, perf, test, chore, ci, build, revert"
  exit 1
fi
