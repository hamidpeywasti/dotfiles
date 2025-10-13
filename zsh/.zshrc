eval "$(starship init zsh)"

# Stow config
export STOW_TARGET=~

#figlet -f slant "Zsh Shell" | lolcat -S 1
eval "$(zoxide init zsh)"


# Set the location of the history file
HISTFILE=~/.zsh_history

# Number of commands to remember
HISTSIZE=1000

# Number of lines to save to the history file
SAVEHIST=1000

# Share history between sessions
setopt inc_append_history
setopt share_history

autoload -U compinit
compinit

# opencode
export PATH=/home/hamid/.opencode/bin:$PATH
