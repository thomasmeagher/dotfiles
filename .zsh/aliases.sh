alias tfm="cd ~"
alias lsd="ls -d .*"
alias rc="$EDITOR ~/.zshrc"

alias home="git --work-tree=$HOME --git-dir=$HOME/.dotfiles/"

alias ga="git add -A"
alias gac="git add -A && git commit -m "
alias gb="git branch"
alias gbd="git branch -D"
alias gc="git commit -m"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gchm="git checkout master"
alias gf="git fetch"
alias gl="git log --graph --pretty=format:\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset\" --abbrev-commit"
alias gp="git push"
alias gpl="git pull"
alias gs="git status -s"
alias gst="git status --untracked-files=no"
alias gsu="git status -uno"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
