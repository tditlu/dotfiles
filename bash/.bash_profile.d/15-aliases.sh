# Enable colors for ls.
alias ls="ls -GFh"

# Enable aliases to be sudo’ed.
alias sudo="sudo "

# Always enable colored "grep" output.
alias grep="grep --color=auto"

# Sublime
if [ -f "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" ]; then
  alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
fi

# Airport
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
