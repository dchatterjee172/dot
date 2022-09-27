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

# MacPorts Installer addition on 2022-09-27_at_22:06:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

eval "$(starship init bash)"
