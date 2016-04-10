#!/bin/bash
$DROPBOX="$HOME/Dropbox"

if [ -d $DROPBOX ]; then
  echo "Link Dropbox my-wiki"
  ln -s $DROPBOX/my-wiki $HOME/my-wiki
else
  tput setaf 1; echo "Please download Dropbox and restart setup.sh"
fi
