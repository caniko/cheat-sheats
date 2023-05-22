#! /bin/bash

WOW_PATH=$1

if [ -z "$WOW_PATH"  ]
then
  WOW_ADDONS="."
else
  WOW_ADDONS="${WOW_PATH}Interface/AddOns"
fi

echo "Installing addons to $WOW_ADDONS"

git clone https://github.com/shagu/pfUI.git $WOW_ADDONS/pfUI && \
git clone https://github.com/shagu/pfQuest.git $WOW_ADDONS/pfQuest && \
git clone git@github.com:caniko/TurtleWoW-Gatherer.git $WOW_ADDONS/Gatherer && \
git clone https://github.com/shagu/pfQuest-turtle.git $WOW_ADDONS/pfQuest-turtle
