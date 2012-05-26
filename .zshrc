# .zshrc
#
# The main configuration file of the zsh shell.

# The following lines were added by compinstall

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/scolobb//.zshrc'

# End of lines added by compinstall

EDITOR="/usr/bin/joe"

# Load the variables.
if [ -f ~/.zsh_variables ]; then
    . ~/.zsh_variables
fi

# Setup the prompt.
if [ -f ~/.zsh_prompt ]; then
    . ~/.zsh_prompt
fi

# Load the functions.
if [ -f ~/.zsh_funcs ]; then
    . ~/.zsh_funcs
fi

# Load the aliases.
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# The following lines were added by compinstall
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install

# Ignore duplicates.
setopt hist_ignore_dups
