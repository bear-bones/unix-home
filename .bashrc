# clean up garbage files that get dumped in the home directory
rm -f 1 nohup.out

# colors for grep and ls
# grep
grep_color=
if grep --help |grep --quiet -- --color
then
  grep_color=--color
fi
grep_type=
if grep --help |grep --quiet -- --perl-regexp
then
  grep_type=--perl-regexp
else
  grep_type=--extended-regexp
fi
alias pgrep="grep $grep_color $grep_type"
# ls
if [[ -f /etc/DIR_COLORS ]]
then
  eval $(dircolors --bourne-shell /etc/DIR_COLORS)
fi
alias ls='ls --color=always'

# aliases
alias l='ls'
alias l1='ls -1'
alias la='ls -A'
alias lr='ls -r'
alias lt='ls -t'
alias lar='ls -Ar'
alias lat='ls -At'
alias lrt='ls -rt'
alias lart='ls -Art'
alias ll='ls -gho'
alias lla='ls -Agho'
alias llr='ls -ghor'
alias llt='ls -ghot'
alias llar='ls -Aghor'
alias llat='ls -Aghot'
alias llrt='ls -ghort'
alias llart='ls -Aghort'
alias lld='ls -gho --color=always |grep ^d'
alias llda='ls -Agho --color=always |grep ^d'
alias lldr='ls -ghor --color=always |grep ^d'
alias lldt='ls -ghot --color=always |grep ^d'
alias lldar='ls -Aghor --color=always |grep ^d'
alias lldat='ls -Aghot --color=always |grep ^d'
alias lldrt='ls -ghort --color=always |grep ^d'
alias lldart='ls -Aghort --color=always |grep ^d'
alias lll='ls -hl'
alias llla='ls -hlA'
alias lllr='ls -hlr'
alias lllt='ls -hlt'
alias lllar='ls -hlAr'
alias lllat='ls -hlAt'
alias lllrt='ls -hlrt'
alias lllart='ls -hlArt'
alias llld='ls -hl --color=always |grep ^d'
alias lllda='ls -hlA --color=always |grep ^d'
alias llldr='ls -hlr --color=always |grep ^d'
alias llldt='ls -hlt --color=always |grep ^d'
alias llldar='ls -hlAr --color=always |grep ^d'
alias llldat='ls -hlAt --color=always |grep ^d'
alias llldrt='ls -hlrt --color=always |grep ^d'
alias llldart='ls -hlArt --color=always |grep ^d'

# quick dir change
export BINDIR=/usr/local/bin
export SLOGDIR=/shared/log
export VLOGDIR=/var/log
alias cdbin="cd $BINDIR"
alias cdslog="cd $SLOGDIR"
alias cdvlog="cd $VLOGDIR"
alias pdbin="pushd $BINDIR"
alias pdslog="pushd $SLOGDIR"
alias pdvlog="pushd $VLOGDIR"

# ssh aliases
alias cccdata='ssh cccdata'
alias ccdatesting='ssh ccdatesting'
alias checkdev='ssh checkdev'
alias chiweb='ssh chiweb'
alias fms001='ssh fms001'
alias fms002='ssh fms002'
alias fms003='ssh fms003'
alias fms004='ssh fms004'
alias fmschar='ssh fmschar'
alias fmscommon='ssh fmscommon'
alias fmsportal='ssh fmsportal'
alias freecheck='ssh freecheck'
alias freedev='ssh freedev'
alias freefin='ssh freefin'
alias freeops='ssh freeops'
alias freewebdb='ssh freewebdb'
alias latex='ssh latex'
alias sophos='ssh sophos'
alias tstportal='ssh tstportal'

# miscellaneous commands
alias c=clear
alias pd=pushd
alias x=exit
alias y='echo -n'  # make y a noop

# make finger less awkward to use
function fing() {
  finger "$@" |sed --regexp-extended 's/\bfinger\b/fing/g'
}

# vim files that match grep pattern
function grep2vim() {
  vim $(grep --files-with-matches --color=never "$@")
}

# remove a file's contents, creating it if need be
function truncate() {
  for file in "$@"
  do
    echo -n >"$file"
  done
}

# convert input string to hex
function str2hex() {
  echo -n "$1" |xxd |tr ' ' "\n" |sed --quiet '/^....$/p' |tr --delete "\n"
}

# functions to make sure the window title is always [root@]server:pwd and
# that the terminal size is always 80x48
function term-set-caption() {
  caption="$NAME$HOSTNAME $(pwd |sed "s|$HOME|~|")"
  if [[ $# == 1 ]]
  then
    caption="$1"
  fi
  echo -ne "\e]0;$caption\a"
}
function term-set-cols() {
  cols=80
  if [[ $# == 1 ]]
  then
    cols="$1"
  fi
  echo -ne "\e[8;48;${cols}t"
}
function cd() {
  builtin cd "$@"
  term-set-caption
}
function getprogdir() {
  progdir=/shared/programmers
  # get working user name
  if [[ $# > 0 ]]
  then
    user="$1"
  elif [[ $LOGNAME == root ]]
  then
    user=$SUDO_USER
  elif [[ -n $LOGNAME ]]
  then
    user=$LOGNAME
  else
    user=$(whoami)
  fi
  if [[ -z "$user" ]]
  then
    echo "No user!" >&2
    return 1
  fi
  # check for directory existence and return directory
  if [[ ! -d $progdir ]]
  then
    echo "No programmers directory!" >&2
    return 1
  fi
  if [[ ! -d "$progdir/$user" ]]
  then
    echo "No programmers directory for $user!" >&2
    return 1
  fi
  echo "$progdir/$user"
}
function cdprog() {
  dir="$(getprogdir "$@")"
  if [[ $? == 0 ]]
  then
    cd $dir
  fi
}
function fg() {
  # no quoting $1 in this function, because it's always an integer
  # give vim and vimdiff the terminal size they need before reviving
  vim=[[ -n $(jobs |grep '\+' |grep --word-regexp 'vim|view') ]]
  vimdiff=[[ -n $(jobs $1 |grep --word-regexp 'vimdiff') ]]
  if [[ $vim ]]
  then
    term-set-cols 84
  elif [[ $vimdiff ]]
  then
    term-set-cols 169
  fi
  builtin fg $1
  term-set-caption
  if [[ $vim || $vimdiff ]]
  then
    term-set-cols
  fi
}
function pushd() {
  if [[ $# == 0 ]]
  then
    builtin pushd ~ >/dev/null
  else
    builtin pushd "$@" >/dev/null
  fi
  if [[ $? == 0 ]]
  then
    echo :: $(dirs |cut --only-delimited --delimiter=' ' --fields=2-)
    term-set-caption
  fi
}
function popd() {
  builtin popd "$@" >/dev/null
  if [[ $? == 0 ]]
  then
    echo :: $(dirs |cut --only-delimited --delimiter=' ' --fields=2-)
    term-set-caption
  fi
}
function pdprog() {
  dir="$(getprogdir "$@")"
  if [[ $? == 0 ]]
  then
    pushd $dir
  fi
}
function vim() {
  # relative numbering uses the left four columns, so it needs 84 columns
  term-set-cols 84
  command vim "$@"
  term-set-cols
}
function svim() {
  term-set-cols 84
  sudo $(which vim) "$@"
  term-set-cols
}
function vimdiff() {
  # relative numbering uses the left six columns of each file, and the middle
  # column is the split separator, so it needs 173 columns
  term-set-cols 173
  command vimdiff "$@"
  term-set-cols
}
function svimdiff() {
  term-set-cols 173
  sudo $(which vimdiff) "$@"
  term-set-cols
}
function ssh() {
  command ssh "$@"
  term-set-cols
  term-set-caption
}
function su() {
  command su "$@"
  term-set-cols
  term-set-caption
}
# modify interactive sudo (sudo -i) to make it pass along the current directory
# as CDDIR, and shim -i with `sudo su -` on boxes that don't support -i
function sudo() {
  if [[ $1 == -i ]]
  then
    if command sudo -h 2>&1 |command grep --quiet -- -i
    then
      command sudo "$@" CDDIR=$(pwd)
    else
      command sudo /bin/su --login -- root -c \
        "CDDIR=$(pwd) PROFILE_SOURCED= SUDO_USER=$LOGNAME bash --login"
    fi
  else
    command sudo "$@"
  fi
  term-set-cols
  term-set-caption
}

# server-local settings
if [[ -f ~/.localrc ]]
then
  source ~/.localrc
fi
