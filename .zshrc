# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
export GPG_TTY=$(tty)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="wezm"
DISABLE_UPDATE_PROMPT="true"

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
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export GOSUMDB=off
export GOPROXY=direct

# Alias
alias zsh="vim ~/.zshrc"
alias r="rake"
alias catt="bat"
alias clean="mac-cleanup"
alias kk="k9s"

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


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="--height=40% --preview='bat {}' --preview-window=right:60%:wrap"
#source $(dirname $(gem which colorls))/tab_complete.sh

alias colorls="colorls --dark --sd --dark:q"
alias lc='colorls -lA --sd'
alias fbqa="export GOOGLE_APPLICATION_CREDENTIALS='$HOME/.keys/firebase-qa-cred.json'"
alias fbdev="export GOOGLE_APPLICATION_CREDENTIALS='$HOME/.keys/firebase-dev-cred.json'"
alias fbprod="export GOOGLE_APPLICATION_CREDENTIALS='$HOME/.keys/firebase-prod-cred.json'"

export PATH="/usr/local/opt/libpq/bin:/Users/hugofonseca/go/bin:$PATH"

# krew path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
