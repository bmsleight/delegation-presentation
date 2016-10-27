#!/bin/sh
cd $(mktemp -d)
git clone https://github.com/bmsleight/delegation-presentation.git pages
cd pages
git checkout gh-pages
rm index.html
hovercraft delegation.rst ./
git add -A
git commit -m "update docs"
git push origin gh-pages
cd ..

