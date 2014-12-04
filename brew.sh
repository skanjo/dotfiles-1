#!/bin/bash

# setup all the homebrews

set -e

# basic dependencies first, other things build and need
# these so make sure they're installed first
brew install coreutils sqlite readline openssl

# other stuff
brew install ack bash-completion gist hub go wget

# cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

# apps
brew cask install iterm2 slate yubiswitch sublime-text3

# fonts!
brew cask install font-source-code-pro font-source-sans-pro \
                  font-source-serif-pro