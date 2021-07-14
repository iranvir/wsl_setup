alias ls="ls --color=always"
alias ll="ls -a --color=always"
alias exit="exit 0"

export PS1="\[\e[36;40m\]\$WSL_DISTRO_NAME\[\e[m\]:\[\e[35;40m\]\w\[\e[m\] $ "

if [[ -n $WSL_DISTRO_NAME && -f /usr/bin/dockerd ]]; then
    # Start Docker daemon automatically when logging in if not running.
    RUNNING=`ps aux | grep dockerd | grep -v grep`
    if [ -z "$RUNNING" ]; then
        sudo dockerd > /dev/null 2>&1 &
        disown
    fi
fi
