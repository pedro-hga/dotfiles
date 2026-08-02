function clip-path
    for file in $argv
        realpath -- $file
    end | xclip -selection clipboard
end
