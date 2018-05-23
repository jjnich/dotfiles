export TERM="xterm-256color"
#Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jjnich/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/antigen/antigen.zsh
#source .proxy
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen use oh-my-zsh
antigen bundle git
antigen theme agnoster
antigen apply

#aliases
alias ll='ls -lah'
source  ~/powerlevel9k/powerlevel9k.zsh-theme
alias config='/usr/bin/git --git-dir=/home/jjnich/.conf/ --work-tree=/home/jjnich'
