# only source once
[[ $PROFILE_SOURCED ]] && return
export PROFILE_SOURCED=true



# clean up temp files
rm -f encworkfile* /tmp/jwhite/* /tmp/texout/jwhite* 2>/dev/null


# direct winfast logins to the appropriate menu
[[ -f .winfastrc ]] && source .winfastrc


# root or not root
NAME=
if [[ $LOGNAME == root ]]
then
    NAME=$LOGNAME@
    export HOME=~jwhite
    cd
fi


# get host name if we don't have it already
export HOSTNAME=${HOSTNAME##*@}
if [[ -z $HOSTNAME ]]
then
    export HOSTNAME=$(uname -n)
fi
export HOSTNAME=$(echo $HOSTNAME |tr '[:upper:]' '[:lower:]')


# terminal settings

# xterm
export TERM=xterm
export TERMINAL=$TERM

# utf8
LANG=en_US.utf8
LC_CTYPE=$LANG
LC_NUMERIC=$LANG
LC_TIME=$LANG
LC_COLLATE=$LANG
LC_MONETARY=$LANG
LC_MESSAGES=$LANG
LC_PAPER=$LANG
LC_NAME=$LANG
LC_ADDRESS=$LANG
LC_TELEPHONE=$LANG
LC_MEASUREMENT=$LANG
LC_IDENTIFICATION=$LANG

# window title and size
echo -ne "\e[8;48;80t"
echo -ne "\e]0;$NAME$HOSTNAME ~\a"

# prompts
if [[ $LOGNAME == root ]]
then
    export PS1='$([[ $(jobs -s |wc -l |sed "s/^ *//") != 0 ]] && echo -n "\[\e[0;33m\][\j]\[\e[m\] "; echo -n "\[\e[31m\]'$NAME$HOSTNAME'\[\e[m\] \w \[\e[31m\]>\[\e[m\] ")'
else
    export PS1='$([[ $(jobs -s |wc -l |sed "s/^ *//") != 0 ]] && echo -n "\[\e[0;33m\][\j]\[\e[m\] "; echo -n "\[\e[36m\]'$NAME$HOSTNAME'\[\e[m\] \w \[\e[36m\]>\[\e[m\] ")'
fi
export PS2='> '


# bash settings

# add ~/bin and current working directory to path
PATH=$PATH:~/bin:.

# ignore case when globbing
shopt -s nocaseglob

# history settings
export HISTTIMEFORMAT='%F %T  '
export HISTCONTROL=ignoredups
export HISTIGNORE="c:exit:fg:l:ll:ls:sudo -i:which *:x"

# vi-style command line editing
set -o vi

# aliases
[[ -f .bashrc ]] && source .bashrc


# local settings

# bash
[[ -f .local_profile ]] && source .local_profile
[[ -f .localrc ]] && source .localrc

# ssh
rm -f .ssh/config
if [[ -f .ssh/local_config ]]
then
    cat .ssh/global_config .ssh/local_config >.ssh/config
elif [[ -f .ssh/global_config ]]
then
    cp .ssh/global_config .ssh/config
else
    touch .ssh/config
fi
chmod 644 .ssh/config
