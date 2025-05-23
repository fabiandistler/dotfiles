#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return ;;
esac

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


# Path to the bash it configuration
export BASH_IT="/home/fd/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location "$BASH_IT"/themes/
export BASH_IT_THEME='bobby'


# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
# export TODO="t"

# Set this to the location of your work or project folders
BASH_IT_PROJECT_PATHS="${HOME}/git/"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set to actual location of gitstatus directory if installed
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# If your theme use command duration, uncomment this to
# enable display of last command duration.
#export BASH_IT_COMMAND_DURATION=true
# You can choose the minimum time in seconds before
# command duration is displayed.
#export COMMAND_DURATION_MIN_SECONDS=1

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1


# Load Bash It
source "$BASH_IT"/bash_it.sh

[ -f ~/.bashrc.local ] && . ~/.bashrc.local

export PATH="$PATH:/home/fd/.local/bin"

alias bat="batcat"
alias au="sudo apt-fast update && apt-fast upgrade"

eval "$(uv generate-shell-completion bash)"
eval "$(uvx --generate-shell-completion bash)"

source "$HOME"/.venv/bin/activate

