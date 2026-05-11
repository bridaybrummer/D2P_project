#!/usr/bin/env bash
# Render, commit, push, and publish the D2P Quarto site.
#
# Usage:
#   ./publish.sh                       # renders whole site, default commit msg
#   ./publish.sh "my commit message"   # custom commit msg
#   ./publish.sh "msg" posts/foo.qmd   # render a single file instead of full site

set -euo pipefail

cd "$(dirname "$0")"

COMMIT_MSG="${1:-Update site}"
TARGET="${2:-}"

echo "==> Rendering..."
if [[ -n "$TARGET" ]]; then
  quarto render "$TARGET" --to html
else
  quarto render
fi

echo "==> Removing iCloud duplicate artifacts from _site/..."
find _site -name "* 2.*" -delete 2>/dev/null || true
find _site -name "* 3.*" -delete 2>/dev/null || true

echo "==> Committing source changes to main..."
git add -A
if git diff --cached --quiet; then
  echo "    (nothing to commit)"
else
  git commit -m "$COMMIT_MSG"
fi

echo "==> Pushing main..."
git push

echo "==> Publishing to gh-pages..."
quarto publish gh-pages --no-prompt --no-browser

echo "==> Done. Live at https://bridaybrummer.github.io/D2P_project/"
