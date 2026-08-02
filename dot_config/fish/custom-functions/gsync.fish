function gsync
    set -l message sync

    if test (count $argv) -gt 0
        set message $argv[1]
    end

    git add --all

    for submodule in (git submodule foreach --quiet 'echo $sm_path')
        git restore --staged $submodule
    end

    git commit -m "$message"
    git push
end
