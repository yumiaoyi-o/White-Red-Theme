#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[38;2;175;47;40m\][\[\e[38;2;107;34;28m\]\u\[\e[38;2;175;47;40m\]@\[\e[38;2;48;48;48m\]\h \[\e[38;2;107;34;28m\]\W\[\e[38;2;175;47;40m\]]\[\e[0m\]\$ '
command fastfetch

# Fix miniconda OpenSSL provider/module lookup (AUR builds may embed build-time MODULESDIR)
if [ -d /opt/miniconda3/lib/ossl-modules ]; then
    export OPENSSL_MODULES=/opt/miniconda3/lib/ossl-modules
fi
if [ -f /opt/miniconda3/ssl/openssl.cnf ]; then
    export OPENSSL_CONF=/opt/miniconda3/ssl/openssl.cnf
fi

# Conda: default bash terminals stay "pure" (no conda loaded).
# Only VS Code integrated terminal auto-loads conda and activates env "N".
__in_vscode=0
if [[ "${TERM_PROGRAM-}" == "vscode" ]] || [[ -n "${VSCODE_IPC_HOOK_CLI-}" ]]; then
    __in_vscode=1
fi

if [[ $__in_vscode -eq 1 ]]; then
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/opt/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/opt/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<

    if command -v conda >/dev/null 2>&1; then
        if [[ "${CONDA_DEFAULT_ENV-}" != "N" ]]; then
            conda activate N 2>/dev/null || echo "conda: failed to activate env 'N'" >&2
        fi
    fi
fi
unset __in_vscode

# Optional helper: manually load conda in a normal terminal
load-conda() {
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
        return 0
    fi
    echo "conda.sh not found at /opt/miniconda3/etc/profile.d/conda.sh" >&2
    return 1
}
