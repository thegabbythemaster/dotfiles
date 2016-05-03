brew install nvm

# If nvm is not a directory, source our system/.nvm file
[ "$(type -t nvm)" != function ] && source $DOTFILES_DIR/system/.nvm

# Grab latest node version and set it to default
nvm install node
nvm use node
nvm alias default node

# Globally install with npm
packages=(
  ava
  bower
  browser-sync
  diffchecker
  eslint
  generator-angular-fullstack
  generator-nm
  generator-react-cdk
  gulp
  less
  mocha
  node-gyp
  nodemon
  plop
  pug
  sort-package-json
  typescript
  yo
)

npm install -g "${packages[@]}"
