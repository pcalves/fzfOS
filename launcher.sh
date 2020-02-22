#!/bin/bash

app()
{
  find /Applications /System/Applications ~/Applications -iregex ".*.app" -prune \
    | fzf +m --margin=1,2 --prompt='> ' --color=16 --reverse \
    | sed "s/ /\\\\ /" \
    | xargs open
}


s() {
  yabai -m window --toggle float && yabai -m window --grid 3:4:1:1:2:1 && app
}

export -f app s
