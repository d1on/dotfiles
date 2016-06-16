#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Include stuff that needs to be set before sourcing init.zsh
module_path=($module_path /usr/local/lib/zpython)
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Pure theme
autoload -U promptinit && promptinit
prompt sorin

# Include machine specific options (i.e. one for work, one for home, one for VPS
# hosts, etc.)

# antigen package management
source ~/config_files/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffknupp/prezto
antigen bundle command-not-found
antigen bundle kennethreitz/autoenv
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle rupa/z

antigen apply
antigen use prezto

source ~/.zshrc.include

alias l='ls -lrt'
alias mmv='noglob zmv -W'
setopt extended_glob

# Don't exit with error when redirecting to existing file
setopt CLOBBER

# list only directories
alias lsd='ls -1 -d *(/)' 


# aliases for searching and installing packages on various systems
# TODO: detect system and use single command to search and install
# that is system agnostic
alias u-install='sudo apt-get install $1'
alias u-search='apt-cache search $1'

alias y-install='sudo yum install $1'
alias y-search='yum search $1'

alias g='git'
alias reload='source ~/.zshrc'

alias meh="echo '¯\_(ツ)_/¯' | tee >(pbcopy)"
alias flipout="echo '(╯°□°）╯︵ ┻━┻' | tee >(pbcopy)"
alias outflip="echo '┬──┬◡ﾉ(° -°ﾉ)' | tee >(pbcopy)"

#source /Users/jknupp/tools/powerline/powerline/bindings/zsh/powerline.zsh

# Ctrl-R for incremental search in both vi modes
bindkey "^R" history-incremental-search-backward
