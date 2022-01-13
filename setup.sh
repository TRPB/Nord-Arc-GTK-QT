#!/bin/bash

# Get Arc GTK theme

cd /tmp
git clone https://github.com/jnsh/arc-theme --depth 1
cd arc-theme

## Replace the Arc colours with Nord colours and build the theme

# Night 1
find . -name "*" -type f -exec sed -i 's/'2F343F'/'2e3440'/gI' {} \;


# Night 2
find . -name "*" -type f -exec sed -i 's/'383C4A'/'3b4252'/gI' {} \;

# Night 3
find . -name "*" -type f -exec sed -i 's/'404552'/'434c5e'/gI' {} \;

# Night 4
find . -name "*" -type f -exec sed -i 's/'565965'/'4c566a'/gI' {} \;


# highlight color
find . -name "*" -type f -exec sed -i 's/'5294E2'/'5e81ac'/gI' {} \;


meson setup --prefix=$HOME/.local -Dvariants=dark -Dthemes=gtk2,gtk3,gtk4,metacity,plank,unity,xfwm build/

meson configure build/

meson install -C build/

cd ..

rm -rf ./arc-theme


# Now the kvantum theme for qt applications

mkdir -p ~/.config/Kvantum/ArcDarkNord
cp /usr/share/Kvantum/KvArcDark/KvArcDark.kvconfig ~/.config/Kvantum/ArcDarkNord/ArcDarkNord.kvconfig
cp /usr/share/Kvantum/KvArcDark/KvArcDark.svg ~/.config/Kvantum/ArcDarkNord/ArcDarkNord.svg


cd ~/.config/Kvantum/ArcDarkNord

# Replace the Arc colours with Nord colours and build the theme


# Night 1
find . -name "*" -type f -exec sed -i 's/'2F343F'/'2e3440'/gI' {} \;


# Night 2
find . -name "*" -type f -exec sed -i 's/'383C4A'/'3b4252'/gI' {} \;

# Night 3
find . -name "*" -type f -exec sed -i 's/'404552'/'434c5e'/gI' {} \;

# Night 4
find . -name "*" -type f -exec sed -i 's/'565965'/'4c566a'/gI' {} \;


# highlight color
find . -name "*" -type f -exec sed -i 's/'5294E2'/'5e81ac'/gI' {} \;



echo 'Launching kvantummanager, remember to set the theme there to ArcDarkNord'

kvantummanager