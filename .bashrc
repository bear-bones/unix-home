# colors for grep and ls
grep_color=
if [[ $(grep --help |grep -- --color) ]]
then
    grep_color=--color
fi
grep_type=
if [[ $(grep --help |grep -- --perl-regexp) ]]
then
    grep_type=--perl-regexp
else
    grep_type=--extended-regexp
fi
alias grep="grep $grep_color $grep_type"
[[ -f /etc/DIR_COLORS ]] && eval $(dircolors -b /etc/DIR_COLORS)
alias ls='ls --color=always'


# permutations of the ls command
alias l='ls'
alias l1='ls -1'
alias la='ls -A'
alias lr='ls -r'
alias lt='ls -t'
alias lar='ls -Ar'
alias lat='ls -At'
alias lrt='ls -rt'
alias lart='ls -Art'

alias ll='ls -hl'
alias lla='ls -hlA'
alias llr='ls -hlr'
alias llt='ls -hlt'
alias llar='ls -hlAr'
alias llat='ls -hlAt'
alias llrt='ls -hlrt'
alias llart='ls -hlArt'

alias lld='ls -dhl |grep ^d'
alias llda='ls -dhlA |grep ^d'
alias lldr='ls -dhlr |grep ^d'
alias lldt='ls -dhlt |grep ^d'
alias lldar='ls -dhlAr |grep ^d'
alias lldat='ls -dhlAt |grep ^d'
alias lldrt='ls -dhlrt |grep ^d'
alias lldart='ls -dhlArt |grep ^d'


# combine find's utility with ls's output formatting
function lsfind() { find . -maxdepth 1 $* |sed -e 's|\./||'; }
function f() { ls $(lsfind $*); }
function f1() { ls -1 $(lsfind $*); }
function fa() { ls -A $(lsfind $*); }
function fr() { ls -r $(lsfind $*); }
function ft() { ls -t $(lsfind $*); }
function far() { ls -Ar $(lsfind $*); }
function fat() { ls -At $(lsfind $*); }
function frt() { ls -rt $(lsfind $*); }
function fart() { ls -Art $(lsfind $*); }

function fl() { ls -hl $(lsfind $*); }
function fla() { ls -hlA $(lsfind $*); }
function flr() { ls -hlr $(lsfind $*); }
function flt() { ls -hlt $(lsfind $*); }
function flar() { ls -hlAr $(lsfind $*); }
function flat() { ls -hlAt $(lsfind $*); }
function flrt() { ls -hlrt $(lsfind $*); }
function flart() { ls -hlArt $(lsfind $*); }

function fld() { ls -dhl $(lsfind $* -type d); }
function flda() { ls -dhlA $(lsfind $* -type d); }
function fldr() { ls -dhlr $(lsfind $* -type d); }
function fldt() { ls -dhlt $(lsfind $* -type d); }
function fldar() { ls -dhlAr $(lsfind $* -type d); }
function fldat() { ls -dhlAt $(lsfind $* -type d); }
function fldrt() { ls -dhlrt $(lsfind $* -type d); }
function fldart() { ls -dhlArt $(lsfind $* -type d); }


# quick dir change
alias cdbin='cd /usr/local/bin'
alias cdsrc='cd /usr/local/src'
alias cdtmp='cd /tmp/jwhite'
alias pdbin='pushd /usr/local/bin'
alias pdsrc='pushd /usr/local/src'
alias pdtmp='pushd /tmp/jwhite'



# ssh aliases
alias cccdata='ssh 172.16.1.22'
alias checkdev='ssh 172.16.1.17'
alias fms001='ssh 172.16.1.57'
alias fms002='ssh 172.16.1.56'
alias fms003='ssh 172.16.1.55'
alias fms004='ssh 172.16.1.93'
alias fmschar='ssh 172.16.1.94'
alias fmscommon='ssh 172.16.1.58'
alias fmslatex='ssh 172.16.1.234'
alias fmsportal='ssh 10.1.1.200'
alias freecheck='ssh 172.16.7.1'
alias freedev='ssh 172.16.1.5'
alias freefin='ssh 172.16.1.91'
alias freeops='ssh 172.16.1.1'
alias freewebdb='ssh 172.16.1.243'



# miscellaneous commands
alias c=clear
alias pd=pushd
alias x=exit



# remove a file's contents, creating it if need be
function truncate()
{
    for file in $*
    do
        echo -n >$file
    done
}



# allow find options for ls
function lf()
{
    ls $(find $*)
}

function llf()
{
    ls -l $(find $*)
}



# functions to make sure the window title is always [root@]server:pwd

# convert input string to hex
function str2hex()
{
    echo -n $1 |xxd |tr ' ' "\n" |sed -n "/^....$/p" |tr -d "\n"
}

# reset window title after cd
function cd()
{
    builtin cd $*
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after fg
function fg()
{
    builtin fg $*
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after pushd
function pushd()
{
    if [[ $# == 0 ]]
    then
        builtin pushd ~ >/dev/null
    else
        builtin pushd $* >/dev/null
    fi
    echo :: $( dirs | cut -s -d\  -f2- )
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after popd
function popd()
{
    builtin popd $* >/dev/null
    echo :: $( dirs | cut -s -d\  -f2- )
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after vim
function vim()
{
    echo -ne "\e[8;48;84t"
    command vim $*
    echo -ne "\e[8;48;80t"
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# sudo vim
function svim()
{
    echo -ne "\e[8;48;84t"
    sudo vim $*
    echo -ne "\e[8;48;80t"
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after ssh
function ssh()
{
    command ssh $*
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after su
# function su()
# {
#     PWD=$(pwd |sed 's|$HOME|~|')
#     command su $*
#     echo -ne "\e]0;$NAME$HOSTNAME:$PWD\a"
# }
function su()
{
    command su $*
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}

# reset window title after sudo
# translate `sudo -i` to `sudo su -` on systems that don't support -i
dashi=$(command sudo -h 2>&1 |grep -- -i)
function sudo()
{
    # translate -i
    if [[ $1 == '-i' && -z $dashi ]]
    then
        command sudo su -
    else
        command sudo $*
    fi

    # reset title
    echo -ne "\e]0;$NAME$HOSTNAME $(pwd |sed 's|$HOME|~|')\a"
}
