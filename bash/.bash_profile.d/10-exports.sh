# Homebrew
export PATH="/usr/local/sbin:$PATH"

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Own scripts
export PATH="$PATH:$HOME/.bin"

# NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# VBCC
export VBCC=$(brew --prefix vbcc)

# Make nano the default editor.
export EDITOR="nano";

# Bash color
export CLICOLOR="1"
export LSCOLORS="ExFxBxDxCxegedabagacad"
