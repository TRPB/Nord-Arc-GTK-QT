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


# Add the system colour scheme

mkdir -p ~/.local/share/color-schemes
cp /usr/share/color-schemes/KvArcDark.colors ~/.local/share/color-schemes/ArcDarkNord.colors

cd ~/.local/share/color-schemes

sed -i 's/'47,52,63'/'46,52,64'/gI' ArcDarkNord.colors
sed -i 's/'56,60,74'/'59,66,82'/gI' ArcDarkNord.colors
sed -i 's/'64,69,82'/'67,76,94'/gI' ArcDarkNord.colors
sed -i 's/'86,89,101'/'76,86,106'/gI' ArcDarkNord.colors
sed -i 's/'82,148,226'/'94,129,172'/gI' ArcDarkNord.colors


# Use this colour scheme in kdeglobals

sed -i 's/ColorScheme=[^\n]*/ColorScheme=ArcDarkNord/gI' ~/.config/kdeglobals



# kvantum theme for qt applications

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


