## Colors for grep and ls
# grep
grep_color=
if [[ -n $(grep --help |grep -- --color) ]]
then
   grep_color=--color
fi
grep_type=
if [[ -n $(grep --help |grep -- --perl-regexp) ]]
then
   grep_type=--perl-regexp
else
   grep_type=--extended-regexp
fi
alias grep="grep $grep_color $grep_type"

# ls
[[ -f /etc/DIR_COLORS ]] && eval $(dircolors --bourne-shell /etc/DIR_COLORS)
alias ls='ls --color=always'


## Aliases
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
alias cdlog='cd /var/log'
alias cdsrc='cd /usr/local/src'
alias cdtmp='cd /tmp/jwhite'
alias pdbin='pushd /usr/local/bin'
alias pdlog='pushd /var/log'
alias pdsrc='pushd /usr/local/src'
alias pdtmp='pushd /tmp/jwhite'

# ssh aliases
alias cccdata='ssh cccdata'
alias checkdev='ssh checkdev'
alias chiweb='ssh chiweb'
alias fms001='ssh fms001'
alias fms002='ssh fms002'
alias fms003='ssh fms003'
alias fms004='ssh fms004'
alias fmschar='ssh fmschar'
alias fmscommon='ssh fmscommon'
alias fmslatex='ssh fmslatex'
alias fmsportal='ssh fmsportal'
alias freecheck='ssh freecheck'
alias freedev='ssh freedev'
alias freefin='ssh freefin'
alias freeocr='ssh freeocr'
alias freeops='ssh freeops'
alias freewebdb='ssh freewebdb'
alias newlatex='ssh newlatex'

# miscellaneous commands
alias c=clear
alias pd=pushd
alias x=exit


## Functions
# make finger less awkward to use
function fgr() {
   finger $* |sed --regexp-extended "s/\\bfinger\\b/fgr/g"
}

# vim files that match grep pattern
function grep2vim() {
   vim $(command grep --files-with-matches $*)
}

# remove a file's contents, creating it if need be
function truncate() {
   for file in $*
   do
      echo -n >$file
   done
}

# allow find options for ls
function lf() {
   ls $(find $*)
}
function llf() {
   ls -l $(find $*)
}

# convert input string to hex
function str2hex() {
   echo -n $1 |xxd |tr ' ' "\n" |sed --quiet "/^....$/p" |tr --delete "\n"
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
      cols=$1
   fi
   echo -ne "\e[8;48;${cols}t"
}
function cd() {
   builtin cd $*
   term-set-caption
}
function fg() {
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
      builtin pushd $* >/dev/null
   fi
   echo :: $(dirs |cut --only-delimited --delimiter=' ' --fields=2-)
   term-set-caption
}
function popd() {
   builtin popd $* >/dev/null
   echo :: $(dirs |cut --only-delimited --delimiter=' ' --fields=2-)
   term-set-caption
}
function vim() {
   # relative numbering uses the left four columns, so it needs 84 columns
   term-set-cols 84
   command vim $*
   term-set-cols
}
function svim() {
   term-set-cols 84
   sudo $(which vim) $*
   term-set-cols
}
function vimdiff() {
   # relative numbering uses the left six columns of each file, and the middle
   # column is the split separator, so it needs 173 columns
   term-set-cols 173
   command vimdiff $*
   term-set-cols
}
function svimdiff() {
   term-set-cols 173
   sudo $(which vimdiff) $*
   term-set-cols
}
function ssh() {
   command ssh $*
   term-set-cols
   term-set-caption
}
function su() {
   command su $*
   term-set-cols
   term-set-caption
}
function sudo() {
   # translate `sudo -i` to `sudo su -` on systems that don't support -i
   if [[ $1 == '-i' && -z $(command sudo --help 2>&1 |grep -- -i) ]]
   then
      command sudo su -
   else
      command sudo $*
   fi
   term-set-cols
   term-set-caption
}
