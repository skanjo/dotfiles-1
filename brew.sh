#!/bin/bash

# setup all the homebrews

set -e

# basic dependencies first, other things build and need
# these so make sure they're installed first
brew install coreutils sqlite readline openssl

# other stuff
brew install ack \
    bash-completion \
    gist \
    hub \
    go \
    lastpass-cli \
    mtr \
    node \
    redis \
    wget

# python, ruby, etc lives in python.sh etc

# cask
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# apps
brew cask install crashplan \
                  dash \
                  iterm2-beta \
                  licecap \
                  mailplane \
                  mattr-slate \
                  nimbus \
                  nvalt \
                  postgres \
                  slack \
                  sublime-text3


# fonts!
brew cask install font-source-code-pro \
                  font-source-sans-pro \
                  font-source-serif-pro
