# Export my own binaries to $PATH
export PATH="$HOME/.local/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PROMPT_COMMAND="history -a;history -n;$PROMPT_COMMAND"
shopt -s histappend

# Source aliasese
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
# Source functions
if [ -f ~/.functions ]; then
	. ~/.functions
fi
