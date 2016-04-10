#!/bin/bash
$DOTFILES="$HOME/.dotfiles"
$DROPBOX="$HOME/Dropbox"

if [ ! -d $DOTFILES ]; then
  echo "dotfiles directory does not exist cloning now..."
  cd $HOME
  git clone git@github.com:aginz/dotfiles.git
  mkdir $DOTFILES
  mv $HOME/dotfiles $DOTFILES

  echo "Link agignore..."
  ln -s $DOTFILES/ag/agignore $HOME/.agignore

  echo "Link zelda hearts battery..."
  ln -s $DOTFILES/tmux/tmux_battery_charge_indicator.sh /usr/local/bin/tmux_battery_charge_indicator.sh

  echo "Link zshrc..."
  ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc

  echo "Link async.zsh..."
  ln -s $DOTFILES/zsh/async.zsh $HOME/.async.zsh

  echo "Link pure.zsh..."
  ln -s $DOTFILES/zsh/pure.zsh $HOME/.pure.zsh

  echo "Link profile..."
  ln -s $DOTFILES/bash/profile $HOME/.profile

  echo "Link golangrc..."
  ln -s $DOTFILES/go/golangrc $HOME/.golangrc

  echo "Link gitprompt..."
  ln -s $DOTFILES/git/gitprompt $HOME/.gitprompt

  echo "Link gitignore_global..."
  ln -s $DOTFILES/git/gitignore_global $HOME/.gitignore_global

  echo "Link vimrc..."
  ln -s $DOTFILES/vim/vimrc $HOME/.vimrc

  echo "Add vim colors"
  mkdir $HOME/.vim
  ln -s $DOTFILES/vim/colors $HOME/.vim/colors

  echo "Link tmux.conf..."
  ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

  echo "Link tat script..."
  ln -s $DOTFILES/tmux/tat /usr/local/bin/tat

  echo "Make tat script executable..."
  chmod +x $DOTFILES/tmux/tat
fi

if [ -d $DROPBOX ]; then
  echo "Link Dropbox my-wiki"
  ln -s $DROPBOX/my-wiki $HOME/my-wiki
else
  tput setaf 1; echo "Please download Dropbox and restart setup.sh"
fi
