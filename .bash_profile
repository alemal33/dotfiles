# ~/.bash_profile
# The personal initialization file, executed for login shells.

# Source the aliases and functions.
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Define user specific environment and startup programs.

BASH_ENV=$HOME/.bashrc
export BASH_ENV 

export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
