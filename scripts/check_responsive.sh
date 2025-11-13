#!/bin/zsh

nb_progressive_img=0
nb_not_progressive_img=0

for image in $(ls static/**/*.png)
do
    nb_not_progressive_img=$((nb_not_progressive_img+1))
    echo "\e[0;31m[NOT JPEG]\e[m\t - \e[0;31m$image\e[m"
done

for image in $(ls static/**/*.(jpeg|jpg))
do
    if [[  -z $(file $image | grep progressive) ]]
    then
        nb_not_progressive_img=$((nb_not_progressive_img+1))
        echo "\e[0;31m[NOT PROGRESSIVE]\e[m\t - \e[0;31m$image\e[m"
    else
        nb_progressive_img=$((nb_progressive_img+1))
        echo "\e[0;32m[PROGRESSIVE]\e[m\t\t - $image"
    fi
done
echo -e "Images found: $((nb_progressive_img+nb_not_progressive_img))"
echo -e "Progressive JPEG Images found: \e[0;32m$nb_progressive_img\e[m"
echo -e "Not Progressive JPEG Images found: \e[0;31m$nb_not_progressive_img\e[m"