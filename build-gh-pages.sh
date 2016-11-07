#!/bin/sh
cd $(mktemp -d)
git clone https://github.com/bmsleight/delegation-presentation.git source
git clone --branch gh-pages https://github.com/bmsleight/delegation-presentation.git gh-pages
hovercraft ./source/delegation.rst ./gh-pages/
cd ./gh-pages/
mkdir ./videos
cp ../source/videos/* ./videos/
sed  -e  's|<img src="images/Window-Missile-Control.jpg"></img>|<video controls><source src=videos/Window-Missile-Control.mp4></videos>|g' -i ./index.html
sed  -e  's|<img src="images/Missile1_long.jpg"></img>|<video controls><source src=videos/Missile1_long.mp4></videos>|g' -i ./index.html
sed  -e  's|<img src="images/Ender_Delegate_.jpg"></img>|<video controls><source src=videos/Ender_Delegate_.mp4></videos>|g' -i ./index.html
git add -A
git commit -m "update docs"
git push origin gh-pages
cd ..

