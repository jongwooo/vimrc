export PATH="$PATH:/Users/jongwooo/.bin"
export ZSH="/Users/jongwooo/.oh-my-zsh"

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

eval $(/opt/homebrew/bin/brew shellenv)

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
[[ -s "/Users/jongwooo/.gvm/scripts/gvm" ]] && source "/Users/jongwooo/.gvm/scripts/gvm"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.3.1/terraform terraform
