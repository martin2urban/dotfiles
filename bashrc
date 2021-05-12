##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 #
#        URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################
# Shell prompt
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"
# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi

##############################################################################
# 02. Aliases                                                                #
##############################################################################
# Enable colors in "ls" command output
alias ls="ls -Glah"

##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

##############################################################################
# Set default editor
##############################################################################
VISUAL=vim 
export VISUAL EDITOR=vim   
export EDITOR
export NOTES_DIR="/home/martin/VIMdb/"
export PATH="$HOME/bin:$PATH"




#
# A minimal BASH profile.
#

# ON Mac OS uncomment the line below.
# alias ls='ls -hG'

# On Linux use the following:
# alias ls='ls -h --color'

# Safe versions of the default commands.
# Will ask permissions before overwriting files.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Extend the program search PATH and add the ~/bin folder.
export PATH=~/bin:$PATH

# Makes the prompt much more user friendly.
# But I do agree that the command to set it up looks a bit crazy.
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

# This is necessary for the sort to work correctly.
export LC_ALL=C

# This is used on macOS to turn off zsh warning.
export BASH_SILENCE_DEPRECATION_WARNING=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/martin/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

set -o vi
#export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
#export PATH="$HOME/local/bin:$PATH"    #this is now in .profile


#for python virtual environments
alias ae='deactivate &> /dev/null; source ./venv/bin/activate'
alias de= 'deactivate'

#
# A minimal BASH profile.
#

# ON Mac OS uncomment the line below.
# alias ls='ls -hG'

# On Linux use the following:
# alias ls='ls -h --color'

# Safe versions of the default commands.
# Will ask permissions before overwriting files.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Extend the program search PATH and add the ~/bin folder.
export PATH=~/bin:$PATH

export DISPLAY=:0
