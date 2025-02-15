set -gx PATH /usr/bin $PATH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if status is-interactive
    # Enable or disable git decorations
    set -g pure_show_git_untracked_files true

    set -g fish_color_normal normal
    set -g fish_color_command blue
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
    set -g fish_color_search_match cyan
    set -g fish_color_operator normal
    set -g fish_color_escape yellow
    set -g fish_color_param magenta

    set -g pure_color_current_directory yellow
    set -g pure_color_prompt_on_success normal
    set -g pure_color_success blue

    # Prompt Symbol (optional, default is ❯)
    set -g pure_symbol_prompt ""

    # Git Symbol (optional, default is '±')
    set -g pure_symbol_git ""

    # Display execution time for long-running commands
    set -g pure_show_execution_time true

    # Shorten working directory path
    set -g pure_truncate_prompt_current_directory_keeps 2

    # Use single-line prompt
    set -g pure_prompt_on_new_line false

    bind \el accept-autosuggestion

    # aliases
    function shutdown
        systemctl poweroff
    end

    # config zoxide
    zoxide init fish | source

    # Start SSH agent and add the key if not already running
    if not pgrep -u $USER ssh-agent >/dev/null
        eval (ssh-agent -c)
        set -gx SSH_AUTH_SOCK $SSH_AUTH_SOCK
        set -gx SSH_AGENT_PID $SSH_AGENT_PID
        ssh-add ~/.ssh/id_ed25519
    end

    function sudo!!
        eval sudo $history[1]
    end
    bind \es sudo!!
end
