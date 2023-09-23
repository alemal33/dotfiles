# ~/.bashrc
# The individual per-interactive-shell startup file.

# Source global definitions.
if [ -r /etc/bashrc ]; then
	. /etc/bashrc
fi

# Define user specific aliases and functions.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# export MANGOHUD_CONFIG=no_display
export MANGOHUD=1
