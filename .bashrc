function git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function mkd {
    mkdir -p -- "$1" && cd -P -- "$1"
}

function screenshot {
  mv "${HOME}/Desktop/$(ls "${HOME}/Desktop" | grep -E "^Screen Shot .*\.png$" | sort -n | tail -1)" $1
}

export PS1="\e[1m\w\$(git_branch)\e[0m\n\$ "

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias gst="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gfa="git fetch --all --prune"
alias gmom="git merge --ff-only origin/master"
alias gg="git grep"
alias gcm="git checkout master || git checkout main"
alias gpn="git push --set-upstream origin head && hub pull-request"
alias gp="git push"
alias gb="git checkout -b"

alias serve="python -m SimpleHTTPServer"

alias ll="ls -lh"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

source ~/dev/jameshfisher/jameshfisher.com/bashrc.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
