## James White's magnificent .bash_profile file


## Reasons to not execute this script
# only source once
[[ $PROFILE_SOURCED ]] && return
export PROFILE_SOURCED=true

# redirect winfast logins
[[ -f ~/.winfastrc ]] && source ~/.winfastrc


## Names
# root or not root
NAME=
if [[ $LOGNAME == root ]]
then
    NAME=$LOGNAME@
    export HOME=~jwhite
fi
cd

# get host name if we don't have it already
export HOSTNAME=${HOSTNAME##*@}
if [[ -z $HOSTNAME ]]
then
    export HOSTNAME=$(uname -n)
fi
export HOSTNAME=$(echo $HOSTNAME |tr '[:upper:]' '[:lower:]')


## Terminal settings
# xterm
export TERM=xterm
export TERMINAL=$TERM

# utf8
export LANG=en_US.utf8
export LC_CTYPE=$LANG
export LC_NUMERIC=$LANG
export LC_TIME=$LANG
export LC_COLLATE=$LANG
export LC_MONETARY=$LANG
export LC_MESSAGES=$LANG
export LC_PAPER=$LANG
export LC_NAME=$LANG
export LC_ADDRESS=$LANG
export LC_TELEPHONE=$LANG
export LC_MEASUREMENT=$LANG
export LC_IDENTIFICATION=$LANG

# window title and size
echo -ne "\e[8;48;80t"
echo -ne "\e]0;$NAME$HOSTNAME ~\a"


## Bash settings
# prompts
if [[ $LOGNAME == root ]]
then
    export PS1='$([[ $(jobs -s |wc -l |sed "s/^ *//") != 0 ]] && echo -n "\[\e[0;33m\][\j]\[\e[m\] "; echo -n "\[\e[31m\]'$NAME$HOSTNAME'\[\e[m\] \w \[\e[31m\]>\[\e[m\] ")'
else
    export PS1='$([[ $(jobs -s |wc -l |sed "s/^ *//") != 0 ]] && echo -n "\[\e[0;33m\][\j]\[\e[m\] "; echo -n "\[\e[36m\]'$NAME$HOSTNAME'\[\e[m\] \w \[\e[36m\]>\[\e[m\] ")'
fi
export PS2='> '

# ignore case when globbing
shopt -s nocaseglob

# vi-style command line editing
set -o vi

# add ~/bin and current working directory to path
export PATH=$PATH:~/bin:.

# history settings
export HISTTIMEFORMAT='%F %T  '
export HISTCONTROL=ignoredups
export HISTIGNORE="c:exit:fg:l:ll:ls:sudo -i:which *:x"

# aliases
[[ -f ~/.bashrc ]] && source ~/.bashrc


## Server-local settings
# bash
[[ -f ~/.local_profile ]] && source ~/.local_profile
[[ -f ~/.localrc ]] && source ~/.localrc

# ssh
rm -f ~/.ssh/config
if [[ -f ~/.ssh/local_config ]]
then
    cat ~/.ssh/global_config ~/.ssh/local_config >~/.ssh/config
elif [[ -f ~/.ssh/global_config ]]
then
    cp ~/.ssh/global_config ~/.ssh/config
else
    touch ~/.ssh/config
fi
chmod 644 ~/.ssh/config
