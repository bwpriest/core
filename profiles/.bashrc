# ls aliases
alias ll='ls -alh'
alias la='ls -a'
alias l='ls -CFlh'
alias lsd='ls -alF | grep /$'

# be safe!
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# ipython virtualenv safety
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"