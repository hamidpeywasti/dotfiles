fish_config theme choose "Dracula Official"

if status is-interactive
    # Commands to run in interactive sessions can go here
    figlet -f slant "Fish Shell" | lolcat -h 0.5
end

# fish_config theme choose "dracula"
starship init fish | source

zoxide init fish | source