#!/bin/bash
$DROPBOX="$HOME/Dropbox"

if [ -d $DROPBOX ]; then
  echo "Link Dropbox my-wiki"
  ln -s $DROPBOX/my-wiki $HOME/my-wiki

  echo "Link Dropbox bash_profile.work"
  ln -s $DROPBOX/setup/bash_profile.work $HOME/.bash_profile.work
else
  tput setaf 1; echo "Please download Dropbox and restart setup.sh"
fi
