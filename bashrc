# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PROMPT_COMMAND='history -a;history -n'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi

source "$HOME/.cargo/env"
eval "$(starship init bash)"

# Created by `pipx` on 2023-12-30 04:54:27
export PATH="$PATH:/Users/debajyotichatterjee/.local/bin"
