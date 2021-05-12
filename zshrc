# Explicitly configured $PATH variable
PATH=/usr/local/git/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/local/bin:/opt/local/sbin:/usr/X11/bin

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

DISABLE_AUTO_UPDATE="true"


#source $ZSH/oh-my-zsh.sh

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
    source $HOME/.private
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile  # Read Mac .profile, if present.
fi

# Shell Aliases
## Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '
alias tat='/home/martin/bin/tat.sh'
alias grep='/bin/grep.sh'

# qfind - used to quickly find files that contain a string in a directorjjjGy
qfind () {
    find . -exec grep -l -s $1 {} \;
    return 0
}

# Custom exports
## Set EDITOR to /usr/bin/vim if Vim is installed
if [ -f /usr/bin/nvim ]; then
    export EDITOR=/usr/bin/nvim
fi


#Use Neovim as "preferred editor"
#export VISUAL=nvim

#Use Neovim instead of Vim or vi

#get rid of grep options warning
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS



fpath=($fpath "/home/martin/.zfunctions")

# Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
#prompt spaceship
#
# vi mode
bindkey -v


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/martin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/martin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/martin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/martin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ==MU from REDDIT - Does this work?
yanktoclipboard(){
    echo $BUFFER | xsel -i -b
}
pastefromclipboard(){
    REBUFFER=$(xsel -o -b </dev/null)$RBUFFER
}
zle -N yanktoclipboard
zle -N pastefromclipboard
bindkey -a 'yy' yanktoclipboard
bindkey -a 'p' paste













