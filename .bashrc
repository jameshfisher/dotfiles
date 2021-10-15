function git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function mkd {
    mkdir -p -- "$1" && cd -P -- "$1"
}

function pbcp {
  cat $1 | pbcopy
}

function screenshot {
  mv "${HOME}/Desktop/$(ls "${HOME}/Desktop" | grep -E "^Screen Shot .*\.png$" | sort -n | tail -1)" $1
}

export PS1="\e[1m\w\$(git_branch)\e[0m\n\$ "

# Prefer $HOME over literal ~ in $PATH - not all systems respect ~
export PATH=""
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/dev/jameshfisher/encrypted-diary"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export GOPATH=~/go

# https://support.apple.com/kb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

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

alias nrb="npm run build"
alias nrs="npm run start"

alias serve="python -m SimpleHTTPServer"

alias ll="ls -lh"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

if test -f "~/.bashrc.thismachine"; then
  source "~/.bashrc.thismachine"
fi

eval "$(rbenv init -)"

source ~/dev/jameshfisher/jameshfisher.com/bashrc.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
