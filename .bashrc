export EDITOR=vim
export HISTFILESIZE=10000
export PATH=/usr/local/bin:$PATH

function include {
  [[ -f "$1" ]] && source "$1"
}

include /usr/local/etc/bash_completion
include /usr/local/share/chruby/chruby.sh
include /usr/local/share/chruby/auto.sh

export PS1="\[\e[2m\]\w\$(git-branch)\n\$ \[\e[0m\]"

function git-setup {
  git config --local --replace-all user.name $1
  git config --local --replace-all user.email $2
}

function git-branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias be="bundle exec"
alias ll="ls -lahG"

include ~/.bashrc.local
