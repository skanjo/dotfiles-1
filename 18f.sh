# 18f-specific setup
# Mostly based on https://github.com/18f/laptop

brew tap cloudfoundry/homebrew-tap
brew install cf-cli
pipsi install groupthink
groupthink install 18f

# https://playbook.cio.gov/designstandards/visual-style/#typefaces
brew cask install font-merriweather font-source-sans-pro
