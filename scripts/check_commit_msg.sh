#!/bin/bash

commit_msg_file=$1

# Remove commented and empty lines, extract the first valid one
commit_msg=$(grep -vE '^\s*#' "$commit_msg_file" | sed '/^\s*$/d' | head -n 1)

pattern='^(feat|fix|docs|style|refactor|perf|test|chore|ci|build|revert)(\([a-zA-Z0-9_\-]+\))?: .+'

# Validate Conventional Commits format
if [[ ! "$commit_msg" =~ $pattern ]]; then
  echo "⛔ Commit message does not follow Conventional Commits!"
  echo "💡 Example: feat(cv): add CV section"
  echo "👉 Format: <type>(<scope>): <short description>"
  echo "📘 Allowed types: feat, fix, docs, style, refactor, perf, test, chore, ci, build, revert"
  exit 1
fi

# Enforce max length for header
header_length=${#commit_msg}
max_length=51

if (( header_length > max_length )); then
  echo "⛔ Commit message header is too long ($header_length characters)"
  echo "💡 Max allowed: $max_length"
  exit 1
fi
