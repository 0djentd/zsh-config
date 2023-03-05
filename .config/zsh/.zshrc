# Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep nomatch
unsetopt extendedglob notify
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/djentd/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Include dotfiles in completion options
# TODO: check if scripts work as intended
# _comp_options+=(globdots)


# bindkey -v
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# bindkey -M vicmd '^[[P' vi-delete-char
# bindkey -M vicmd '^e' edit-command-line
# bindkey -M visual '^[[P' vi-delete

autoload -Uz promptinit
promptinit

aliasrc_file="$XDG_CONFIG_HOME/shell/aliasrc"
if [[ -f "$aliasrc_file" ]]; then
    source "$aliasrc_file"
fi

if command -v starship &> /dev/null; then
    source <(starship init zsh --print-full-init)
fi

zsh_syntax_highlighting_plugin_file="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ -f "$zsh_syntax_highlighting_plugin_file" ]]; then
    source "$zsh_syntax_highlighting_plugin_file"
fi

zsh_autosuggestions_plugin_file="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [[ -f "$zsh_autosuggestions_plugin_file" ]]; then
    source "$zsh_autosuggestions_plugin_file"
fi
