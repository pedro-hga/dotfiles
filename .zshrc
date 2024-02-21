#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z #"$TMUX" ]; then
#  exec tmux
#fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="./bin:./node_modules/.bin:${PATH}"
export PATH="$HOME/.rbenv/bin:$PATH"

# plugins
plugins=(zsh-vi-mode git gitfast fast-syntax-highlighting common-aliases history-substring-search zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(rbenv init -)"
eval "$(starship init zsh)"

alias exercises="/home/pedro/gitrepos/exercises"
alias projects="/home/pedro/gitrepos/projects"
alias dotfiles="/home/pedro/gitrepos/dotfiles/"
alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
