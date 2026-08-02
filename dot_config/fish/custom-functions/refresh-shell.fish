function refresh-shell --description "Restart the Fish shell"
    commandline -f repaint
    exec fish
end
