#### ALIASES ####
alias ls='ls -GFh'
alias ll='ls -laGFh'

#### EXPORTS ####
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH=$HOME/.local/bin:$PATH

#export PS1="\[\033[42;1;37m\]\w\e[m \[\033[37;1m\]|>\]\033[m\] "
export PS1="\w |> "

#### SOURCES ####
if type brew &>/dev/null; then
  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

if [[ -f $HOME/.bashrc ]]; then
  source $HOME/.bashrc
fi
