#!/bin/sh
# Rebuilds vendor/three.string.min.js: a minified, tree-shaken three.js r160 with only what String uses.
# Run from the repo root after editing tools/three-entry.js.
set -e
TMP=$(mktemp -d)
cp tools/three-entry.js "$TMP/entry.js"
cd "$TMP"
npm init -y >/dev/null
npm i three@0.160.0 esbuild@0.24.2 --silent
npx esbuild entry.js --bundle --format=esm --minify --target=es2020 --legal-comments=eof --outfile=three.string.min.js
cd - >/dev/null
cp "$TMP/three.string.min.js" vendor/three.string.min.js
rm -rf "$TMP"
echo "vendor/three.string.min.js rebuilt"
