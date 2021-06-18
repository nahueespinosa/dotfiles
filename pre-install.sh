#!/bin/sh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  export CHSH=yes       # Make zsh the default shell
  export RUNZSH=no      # Don't run zsh after the install
  export KEEP_ZSHRC=yes # Don't replace an existing .zshrc
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
