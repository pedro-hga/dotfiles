function nvims
    set -l items default nvim-java nvim-obsidian nvim-php nvim-ruby
    set -l config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = default
        set config ""
    end
end
