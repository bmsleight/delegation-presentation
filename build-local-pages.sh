# set-up Enviroment
###################
#cd ~
#mkdir -p deldelegation-presentation-tmp/source
#cd /home/bms/deldelegation-presentation-tmp
#python3 -m venv venv
#. venv/bin/activate
#pip install --upgrade pip
#pip install hovercraft
#/bin/bash ../delegation-presentation/build-gh-pages.sh


# Make local build
rm -r ./source
rm -r ./gh-pages
mkdir source

cp -r ../delegation-presentation/* ./source/
hovercraft ./source/delegation.rst ./gh-pages/
cd ./gh-pages/
mkdir ./videos
cp ../source/videos/* ./videos/
sed  -e  's|<img src="images/Window-Missile-Control.jpg"></img>|<video controls><source src=videos/Window-Missile-Control.mp4></videos>|g' -i ./index.html
sed  -e  's|<img src="images/Missile1_long.jpg"></img>|<video controls><source src=videos/Missile1_long.mp4></videos>|g' -i ./index.html
sed  -e  's|<img src="images/Ender_Delegate_.jpg"></img>|<video controls><source src=videos/Ender_Delegate_.mp4></videos>|g' -i ./index.html
cd ..
