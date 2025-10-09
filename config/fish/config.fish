if not contains /usr/bin $PATH
    fish_add_path /usr/bin
end

# SSH key management
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
    set -g pure_symbol_prompt "❯"
    set -g pure_symbol_git ""
    set -g pure_show_execution_time true
    set -g pure_truncate_prompt_current_directory_keeps 3
    set -g pure_prompt_on_new_line false

    # aliases
    function shutdown
        systemctl poweroff
    end

    function hibernate
        sudo systemctl hibernate
    end

    function sleep
        systemctl suspend
    end

    function ccwd
        pwd | xclip -selection clipboard
    end

    function sudo!!
        eval sudo $history[1]
    end
    bind \es sudo!!

    function refresh-shell --description "Restart the Fish shell"
        commandline -f repaint
        exec fish
    end

    function mkcd
        mkdir -p $argv[1]; and cd $argv[1]
    end

    function fish_user_key_bindings
        bind -M insert \cl accept-autosuggestion
        bind -M insert \cb refresh-shell
        bind -M insert \ck up-or-search
        bind -M insert \cj down-or-search
        bind -M insert \ch backward-char
        bind -M insert \cl forward-char
        bind -M insert \cu kill-whole-line
    end

    # config zoxide
    zoxide init fish | source
    alias nj='env NVIM_APPNAME=nvim-java nvim'
    alias no='env NVIM_APPNAME=nvim-obsidian nvim'

    # nvim profiles
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

mise activate fish | source
