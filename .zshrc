# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
export GPG_TTY=$(tty)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"
DISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  brew
  docker
  kubectl
  vscode
  osx
  gpg-agent
  tmux
  command-not-found
  colored-man-pages
  git
  zsh_reload
  ssh-agent
)

source $ZSH/oh-my-zsh.sh
export LC_ALL=en_US.UTF-8
export EDITOR="vim"

# Alias
alias zsh="vim ~/.zshrc"
alias ls="ll -AG"

# Android stuff
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# PYEnv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


# kubectl
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

# aws
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

