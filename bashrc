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

[ -f /opt/local/share/fzf/shell/key-bindings.bash ] && source /opt/local/share/fzf/shell/key-bindings.bash

if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

eval "$(starship init bash)"

# Created by `pipx` on 2022-09-28 04:59:30
export PATH="$PATH:$HOME/.local/bin"
