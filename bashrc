[ -z "$PS1" ] && return

if [ -z "$HOST" ]; then
  export HOST=`hostname`
fi

VIRTUAL_ENV_DISABLE_PROMPT='true'

HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "["${ref#refs/heads/}"] "
}

function prompt_command {
    TERMWIDTH=${COLUMNS}

    if [ -z "$VIRTUAL_ENV" ]; then
        venv=""
    else
        venv=`basename $VIRTUAL_ENV`
        venv="($venv) "
    fi

    prompt="$venv$(git_branch)$USER@$HOST:${PWD}"

    let fillsize=${COLUMNS} #-${#prompt}
    if [ "$fillsize" -gt "0" ]; then
	tmp=$(printf "%${fillsize}s")
	fill=${tmp// /_}
    fi
}

PROMPT_COMMAND=prompt_command
PS1="\[\033]0;\h\007\]\e[0;31m\${fill}\e[m\n\e[0;34m\${prompt}\e[m\n$ "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

source $HOME/.bash_profile
