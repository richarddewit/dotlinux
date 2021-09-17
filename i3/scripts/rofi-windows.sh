#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/rofi-settings.sh
mkdir -p $HOME/.config/rofi
bg=$bg fg=$fg red=$c_red_d envsubst < $DIR/rofi-config.rasi > $HOME/.config/rofi/config.rasi

rofi -i -show window
