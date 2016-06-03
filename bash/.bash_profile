# Source .bash_profile.d scripts
if [ -d ~/.bash_profile.d ]; then
  for script in $( find ~/.bash_profile.d/*.sh -type f )
  do
    if [ -f "$script" ]; then
        source $script
    fi
  done
  unset script
fi
