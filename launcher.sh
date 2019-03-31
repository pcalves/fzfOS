#!/bin/bash

app()
{
  find /Applications ~/Applications -type d -iregex ".*.app$" -prune | fzf +m --margin=1,2 --prompt='> ' --color=16 --reverse | sed "s/ /\\\\ /" | xargs open
}


s() {
  chunkc tiling::window --toggle float && chunkc tiling::window --grid-layout 3:4:1:1:2:1 && app
}

export -f app s
