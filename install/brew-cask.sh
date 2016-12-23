# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Not on brew-cask
# Mad catz
# Window Magnet
# Office (there is one, but I'm not sure I trust it)

# Install packages
apps=(
  cyberduck
  flux
  google-chrome
  java
  slack
  sublime-text3
  virtualbox
  microsoft-office
  disk-inventory-x
  firefox
  github-desktop
  spotify
  steam
  vmware-fusion
  dropbox
  gitkraken
)

brew cask install "${apps[@]}"
