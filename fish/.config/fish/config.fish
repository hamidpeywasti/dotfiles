fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/bin
fish_add_path /opt/tx
fish_add_path $HOME/go/bin
fish_add_path $HOME/.deno/bin
fish_add_path $HOME/.npm-global/bin
fish_add_path $HOME/.zig
fish_add_path $HOME/.opencode/bin

fish_config theme choose "Dracula Official"

if status is-interactive
    # Commands to run in interactive sessions can go here
    figlet -f slant "Fish Shell" | lolcat -S 1.0
end

# fish_config theme choose "dracula"
starship init fish | source

# zoxide init fish | source
