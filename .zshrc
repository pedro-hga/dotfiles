# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/gitrepos/dotfiles/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z #"$TMUX" ]; then
#  exec tmux
#fi
ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH="$HOME/.oh-my-zsh"
export PATH="./bin:./node_modules/.bin:${PATH}"
export PATH="$HOME/.rbenv/bin:$PATH"

# plugins
plugins=(zsh-vi-mode git gitfast fast-syntax-highlighting common-aliases history-substring-search zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"
eval "$(starship init zsh)"

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias tp="tilix --preferences"

eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/gitrepos/dotfiles/.p10k.zsh.
[[ ! -f ~/gitrepos/dotfiles/.p10k.zsh ]] || source ~/gitrepos/dotfiles/.p10k.zsh
