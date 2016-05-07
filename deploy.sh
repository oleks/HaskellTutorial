#!/usr/bin/env bash

set -euo pipefail

git checkout -B gh-pages

set +e
cat | bash - <<EOF
set -euo pipefail

git merge master
rm -f index.html
emacs index.org --batch -f org-html-export-to-html --kill
git add -f index.html
git commit -S -m 'Deploy'
git push -f origin gh-pages
EOF
set -e

git checkout master
