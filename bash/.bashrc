# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# User-specific environment
add_to_path() {
    [[ ":$PATH:" != *":$1:"* ]] && PATH="$1:$PATH"
}

add_to_path "$HOME/.cargo/bin"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/bin"
add_to_path "/opt/tx"
add_to_path "$HOME/go/bin"
add_to_path "$HOME/.deno/bin"

export PATH

export DENO_INSTALL="$HOME/.deno/bin"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Color settings for less
export LESS_TERMCAP_mb=$'\e[1;31m'     # Begin bold (red)
export LESS_TERMCAP_md=$'\e[1;38;5;220m' # Begin double-bright (yellow)
export LESS_TERMCAP_so=$'\e[01;48;5;235;37m' # Begin standout (white on grey background)
export LESS_TERMCAP_us=$'\e[1;36m'     # Begin underline (cyan)
export LESS_TERMCAP_me=$'\e[0m'        # End mode (reset)
export LESS_TERMCAP_se=$'\e[0m'        # End standout mode (reset)
export LESS_TERMCAP_ue=$'\e[0m'        # End underline mode (reset)
export LESS_TERMCAP_mr=$'\e[7m'        # Reverse video (inverted colors)
export LESS_TERMCAP_mh=$'\e[2m'        # Dimmed text
export LESS_TERMCAP_ZN=$'\e[35m'       # End of text (purple)
export LESS_TERMCAP_ZV=$'\e[35m'       # Visual bell (purple)
export LESS_TERMCAP_ZO=$'\e[36m'       # Start of text (cyan)
export LESS_TERMCAP_ZW=$'\e[36m'       # Blank line (cyan)
export GROFF_NO_SGR=1                  # Disable SGR for bold/underline on some terminals
export LESS='-R'                       # Keep color codes intact

# Enable less to show colors for man pages
export LESS='-R --use-color -Dd+r$Du+b$'

# Aliases
alias wttr="curl wttr.in/tabriz"

# Zoxide initialization
eval "$(zoxide init bash)"

# Starship initializatio
eval "$(starship init bash)"

# Stow config
export STOW_TARGET=~

# ATAC environment variables
export ATAC_MAIN_DIR="$HOME/Websites/ATAC/"

# Rust environment setup
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# figlet -s  $(fastfetch -s os --format json | jq -r '.[0].result.name') | lolcat -S 1
