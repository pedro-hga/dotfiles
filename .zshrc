#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z #"$TMUX" ]; then
#  exec tmux
#fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="./bin:./node_modules/.bin:${PATH}"
export PATH="$HOME/.rbenv/bin:$PATH"
plugins=(git gitfast common-aliases history-substring-search fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"
eval "$(starship init zsh)"

alias onedrive="/home/pedro/Insync/pedro_hga@live.com/OneDrive"
alias obsidian="/home/pedro/Insync/pedro_hga@live.com/OneDrive/Arquivos\ pessoais/Knowledge\ Base"
alias exercises="/home/pedro/gitrepos/exercises"
alias projects="/home/pedro/gitrepos/projects"
alias dotfiles="/home/pedro/Insync/pedro_hga@live.com/OneDrive/dotfiles"
alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
