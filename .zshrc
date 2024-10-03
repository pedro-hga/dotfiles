if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH="$HOME/.oh-my-zsh"
export PATH="./bin:./node_modules/.bin:${PATH}"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
. "$HOME/.asdf/asdf.sh"
# export PATH="$HOME/.rbenv/bin:$PATH"

export SSH_AUTH_SOCK=/run/user/$UID/keyring/ssh

# plugins
plugins=(zsh-syntax-highlighting zsh-autocomplete git gitfast common-aliases history-substring-search)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(rbenv init -)"
# eval "$(starship init zsh)"

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias tomonitor="xrandr --output HDMI-0 --off"
alias dualmonitor="xrandr --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output HDMI-0 --mode 3840x2160 --pos 3840x192 --rotate left"

eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/gitrepos/dotfiles/.p10k.zsh.
[[ ! -f ~/gitrepos/dotfiles/.p10k.zsh ]] || source ~/gitrepos/dotfiles/.p10k.zsh
