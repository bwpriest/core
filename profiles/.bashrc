# ls aliases
alias ll='ls -alh'
alias la='ls -a'
alias l='ls -CFlh'
alias lsd='ls -alF | grep /$'

# be safe!
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#### grep aliases
alias grepy='grep --include \*.py'

#### bash history hacks
shopt -s histappend
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth
export HISTIGNORE='history'
export HISTTIMEFORMAT='%F %T'
shopt -s cmdhist
export PROMPT_COMMAND='history -a'

#### Jupyter aliases
alias jn='jupyter notebook'

#### alias scripts as executables
for f in $(ls ~/bin/scripts); do
    alias ${f}=~/bin/scripts/${f};
done

#### workaround for global pip
export PIP_REQUIRE_VIRTUALENV=true
gpip3(){
    PIP_REQUIRE_VIRTUALENV="0" pip3 "$@"
}
gpip(){
    PIP_REQUIRE_VIRTUALENV="0" pip "$@"
}

#### pyenv init
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#### virtual environment activation shortcut
ae(){
    source ~/.venvs/"$@"/bin/activate
}
