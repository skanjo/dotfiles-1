#/bin/bash

# initial setup on a new machine

# install homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

# install homeshick homes
homeshick clone jacobian/dotfiles
homeshick clone jacobian/dotfiles-private

# config osx and dropbox links
$HOME/.homesick/repos/dotfiles/config-osx.sh
$HOME/.homesick/repos/dotfiles/setup-dropbox-links.sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install lots of things!
$HOME/.homesick/repos/dotfiles/brew.sh
$HOME/.homesick/repos/dotfiles/ruby.sh
$HOME/.homesick/repos/dotfiles/python.sh
