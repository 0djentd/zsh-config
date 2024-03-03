HISTSIZE=20000
SAVEHIST=50000
# autocd - type dir name and press enter to cd
# beep - ???
# nomatch - ???
setopt autocd beep nomatch
# extendedglob - Press tab on glob to expand (?)
# notify - ???
unsetopt extendedglob notify

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/djentd/.config/zsh/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# ??? probably not properly configured
# AUTOCOMPLETE
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# ENDAUTOCOMPLETE

# Include dotfiles in completion options
# TODO: check if scripts work as intended
# _comp_options+=(globdots)


# bindkey -v
# Vi-like mode for line editing (press ESC to activate)
bindkey -v

# Use hjkl for suggestion selecting
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Edit current line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# bindkey -M vicmd '^[[P' vi-delete-char
# bindkey -M vicmd '^e' edit-command-line
# bindkey -M visual '^[[P' vi-delete

# vi-like binds for up/down arrows
# bindkey '^n' down-line-or-history
# bindkey '^p' up-line-or-history

# Histfile location
HISTFILE=$XDG_CONFIG_HOME/zsh/.histfile

# ???
autoload -Uz promptinit
promptinit

# File with aliases
aliasrc_file="$XDG_CONFIG_HOME/shell/aliasrc"
if [[ -f "$aliasrc_file" ]]; then
    source "$aliasrc_file"
fi

# Use starship prompt if installed
if command -v starship &> /dev/null; then
    source <(starship init zsh --print-full-init)
fi

# Syntax highlighting
zsh_syntax_highlighting_plugin_file="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ -f "$zsh_syntax_highlighting_plugin_file" ]]; then
    source "$zsh_syntax_highlighting_plugin_file"
fi

# Press "->" for autocompletion, press tab twice and arrows or hjkl to pick suggestion
zsh_autosuggestions_plugin_file="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [[ -f "$zsh_autosuggestions_plugin_file" ]]; then
    source "$zsh_autosuggestions_plugin_file"
fi

# # FZF keybindings (c+t, c+r, a+c) and completion
# if command -v fzf &> /dev/null; then
#     source /usr/share/fzf/key-bindings.zsh
#     source /usr/share/fzf/completion.zsh
# fi

# # timetable-cli
# if command -v timetable-cli &> /dev/null; then
#     timetable-cli -SQ --combine-title-and-variation
#     # eval "$(_TIMETABLE_CLI_COMPLETE=zsh_source timetable-cli)"
# fi

# Search for not installed program in repos (arch only?)
# source /usr/share/doc/pkgfile/command-not-found.zsh
