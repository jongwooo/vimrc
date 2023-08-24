export PATH="$PATH:/Users/jongwooo/.bin"
export ZSH="/Users/jongwooo/.oh-my-zsh"
export GPG_TTY=$(tty)

ZSH_THEME="agnoster"

plugins=(
	git
	autojump
	zsh-hangul
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-wakatime
)

source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export SDKMAN_DIR="$HOME/.sdkman"
[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

export GVM_DIR="$HOME/.gvm"
[ -s "$GVM_DIR/scripts/gvm" ] && source "$GVM_DIR/scripts/gvm"

eval "$(github-copilot-cli alias -- "$0")"
alias vim="nvim"
alias k="kubectl"
