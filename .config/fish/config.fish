# ==========================
# Aliases
# ==========================

alias cat=bat
alias h="env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias ls=exa
alias reload="exec $SHELL -l"
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"

alias frc="vim ~/.config/fish/config.fish"
alias trc="vim ~/.tmux.conf"
alias vrc="vim ~/.vim/vimrc"

# ==========================
# Abbreviations
# ==========================

abbr d "docker"
abbr dc "docker-compose"
abbr df "h git"
abbr g "git"
abbr home "cd ~"
abbr lsd "exa -a"
abbr t "tmux"
abbr tf "terraform"
abbr v "vim"
abbr x "devx"

# ==========================
# Variables
# ==========================

set -gx EDITOR vim
set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --follow --glob '!.git/*'"

# XDG Base Directory Specification
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config

# Avoid issues with `gpg` as installed via Homebrew
# https://stackoverflow.com/a/42265848/96656
set -x GPG_TTY (tty)

# Pure
# https://github.com/rafaelrinaldi/pure#configuration
set pure_color_primary white
set pure_color_success green

# ==========================
# Functions
# ==========================

# Auto start tmux if using direnv and z
# https://github.com/direnv/direnv/wiki/Tmux-and-Fish
function autotmux --on-variable TMUX_SESSION_NAME
        if test -n "$TMUX_SESSION_NAME" #only if set
    if test -z $TMUX #not if in TMUX
      if tmux has-session -t $TMUX_SESSION_NAME
        exec tmux new-session -t "$TMUX_SESSION_NAME"
      else
        exec tmux new-session -s "$TMUX_SESSION_NAME"
      end
    end
  end
end

# ==========================
# Other
# ==========================

eval (direnv hook fish)
eval (hub alias -s)
source /usr/local/opt/asdf/asdf.fish
