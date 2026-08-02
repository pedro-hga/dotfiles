function clip-file
    set uris

    for file in $argv
        set -a uris file://(realpath -- $file)
    end

    printf "copy\n%s\n" (string join \n $uris) | xclip -selection clipboard -t x-special/gnome-copied-files
end
