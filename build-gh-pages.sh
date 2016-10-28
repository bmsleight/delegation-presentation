#!/bin/sh
cd $(mktemp -d)
git clone https://github.com/bmsleight/delegation-presentation.git source
git clone --branch gh-pages https://github.com/bmsleight/delegation-presentation.git gh-pages
hovercraft ./source/delegation.rst ./gh-pages/
cd ./gh-pages/
git add -A
git commit -m "update docs"
git push origin gh-pages
cd ..

