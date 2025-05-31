set -gx PATH /usr/bin $PATH
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

if not ssh-add -l >/dev/null
    ssh-add ~/.ssh/id_ed25519
end

if status is-interactive
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx SUDO_EDITOR nvim

    set -g pure_show_git_untracked_files true

    set -g fish_color_normal normal
    set -g fish_color_command green
    set -g fish_color_quote magenta
    set -g fish_color_red red
    set -g fish_color_green green
    set -g fish_color_yellow yellow
    set -g fish_color_blue blue
    set -g fish_color_magenta magenta
    set -g fish_color_cyan cyan
    set -g fish_color_white white
    set -g fish_color_black black
    set -g fish_color_selection_bg black
    set -g fish_color_selection_fg normal
    set -g fish_color_search_match blue
    set -g fish_color_operator normal
    set -g fish_color_escape yellow
    set -g fish_color_param magenta

    set -g pure_color_current_directory cyan
    set -g pure_color_prompt_on_success yellow
    set -g pure_color_success green

    # Prompt Symbol (optional, default is ❯)
    set -g pure_symbol_prompt ">>"

    # Git Symbol (optional, default is '±')
    set -g pure_symbol_git ""

    # Display execution time for long-running commands
    set -g pure_show_execution_time true

    # Shorten working directory path
    set -g pure_truncate_prompt_current_directory_keeps 3

    # Use single-line prompt
    set -g pure_prompt_on_new_line false


    # aliases
    function shutdown
        systemctl poweroff
    end

    function ccwd
        pwd | xclip -selection clipboard
    end

    function sudo!!
        eval sudo $history[1]
    end
    bind \es sudo!!

    function refresh-shell
        exec fish
    end

    bind \el accept-autosuggestion
    bind \cb refresh-shell

    function fish_user_key_bindings
        bind -M insert \el accept-autosuggestion
        bind -M insert \cb refresh-shell
    end

    # config zoxide
    zoxide init fish | source

    alias nj='env NVIM_APPNAME=nvim-java nvim'
    alias no='env NVIM_APPNAME=nvim-obsidian nvim'

    # Function to interactively select Neovim configuration
    function nvims
        set -l items default nvim-java nvim-obsidian
        set -l config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)

        if test -z "$config"
            echo "Nothing selected"
            return 0
        else if test "$config" = default
            set config ""
        end

        env NVIM_APPNAME=$config nvim $argv
    end
end

~/.local/bin/mise activate fish | source

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

set -gx PATH /opt/spring-boot-cli/bin $PATH
