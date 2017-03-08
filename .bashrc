git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# jim@Jims-MacBook-Pro:~/dotfiles
# $ echo foo
export PS1="\e[1m\u@\h:\w\$(git_branch)\n\$\e[m "

alias gst="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gfa="git fetch --all --prune"
alias gmom="git merge origin/master"

alias serve="python -m SimpleHTTPServer"

alias l="ls -la"
