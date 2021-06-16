#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo 'Installing oh-my-zsh'
  curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
fi

if [ ! $SHELL = "/bin/zsh" ]; then
  echo 'Changing default shell to zsh, you will have to log out and in again to see the changes'
  chsh -s /bin/zsh
fi
