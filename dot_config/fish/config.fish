# paths
fish_add_path /usr/bin
fish_add_path $HOME/.config/herd-lite/bin
fish_add_path $HOME/.spicetify

# custom functions
set -p fish_function_path $HOME/.config/fish/custom-functions

# environment
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx SUDO_EDITOR nvim

set -gx _ZO_EXCLUDE_DIRS $HOME/.config

if status is-interactive

    mise activate fish | source

    zoxide init fish | source

    if not ssh-add -l >/dev/null 2>&1
        ssh-add $HOME/.ssh/id_ed25519
    end
end
