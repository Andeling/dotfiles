#!/bin/bash

echo "Checking environment..."
ENV_OK=true

for cmd in zsh vim tmux go pip; do
    if [ -x "$(command -v $cmd)" ]; then
      echo "  ✓  $cmd installed"
    else
      echo "  ✗  $cmd not installed"
      ENV_OK=false
    fi
done

if ! $GOPATH; then
    echo "GOPATH is not set. Add export GOPATH="\$HOME/go" to .profile"
fi

if ! $ENV_OK; then
    exit 1
fi

echo "Installing to ${HOME}"
cd ${HOME}

function symlink {
    target=$1
    name=$2
    echo "  $name -> $target"
    ln -s $target $name
}


echo "Creating symbol links:"
symlink   dotfiles/tmux/.tmux.conf   .tmux.conf
symlink   dotfiles/vim/.vimrc        .vimrc
symlink   dotfiles/vim/.vim          .vim
symlink   dotfiles/.profile          .profile
symlink   dotfiles/zsh/.zprofile     .zprofile
symlink   dotfiles/zsh/.zshrc        .zshrc
symlink   dotfiles/zsh/.zsh          .zsh
symlink   dotfiles/zsh/.zplug        .zplug

echo "Installing fzf..."
go get -u github.com/junegunn/fzf

echo "Installing vim plugins..."
vim +PlugInstall +qall

echo "Installing zplug..."
git clone https://github.com/zplug/zplug $HOME/dotfiles/zsh/.zplug

echo "Installation finished."
echo "To change shell to zsh: chsh -s `which zsh`"
