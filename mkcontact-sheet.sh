#!/bin/bash
#this is a script to create a contact sheet from the contents of a directory

#if pass directory then traverse
if [ $1 ]
then

    if [ ! -f "$1-0.jpg" ] && [ ! -f "$1" ] && [ ! -f "$1.jpg" ]
    then
    echo "Patience Grasshopper I am montaging directory $1"
        montage -monitor "$1/"*.jpg -tile 3x3 -background 'gray' -geometry 400x+0+0 "$1.jpg"
    fi
else
echo "Beeee patient"
    if [ ! -f "~contactsheet.jpg" ]
    then
    echo ""
        montage -monitor *.jpg -tile 3x3 -background 'gray' -geometry 400x+0+0 "~contactsheet.jpg"
    fi
fi

