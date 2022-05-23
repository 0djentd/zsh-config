# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch
unsetopt extendedglob notify
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/djentd/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

HISTFILE=$XDG_CONFIG_HOME/zsh/.histfile

autoload -Uz promptinit
promptinit

source $XDG_CONFIG_HOME/shell/aliasrc
source <(starship init zsh --print-full-init)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
