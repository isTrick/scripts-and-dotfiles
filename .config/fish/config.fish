if status is-interactive
    set -g fish_greeting "👨🏻‍💻$USER"
end

starship init fish | source

eval (keychain --eval --quiet --agents ssh id_ed25519)
fish_add_path $HOME/.local/bin

if test -d /home/linuxbrew/.linuxbrew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

fnm env --use-on-cd | source
