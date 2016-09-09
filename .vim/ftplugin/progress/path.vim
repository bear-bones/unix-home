if !empty(glob('/home/rel50'))
  setlocal path+=/home/rel50/appt
  setlocal path+=/home/rel50/ccc
  setlocal path+=/home/rel50/cccwin
  setlocal path+=/home/rel50/include
  setlocal path+=/home/rel50/med
  setlocal path+=/home/rel50/utility
  setlocal path+=/home/rel50/windows
endif

if !empty(glob('/home/free50'))
  setlocal path+=/home/free50/appt
  setlocal path+=/home/free50/ccc
  setlocal path+=/home/free50/cccwin
  setlocal path+=/home/free50/include
  setlocal path+=/home/free50/med
  setlocal path+=/home/free50/utility
  setlocal path+=/home/free50/windows
endif

if !empty(glob('/home/fin10'))
  setlocal path+=/home/fin10/billing
  setlocal path+=/home/fin10/cccwin
  setlocal path+=/home/fin10/cfap
  setlocal path+=/home/fin10/cfgl
  setlocal path+=/home/fin10/include
  setlocal path+=/home/fin10/payroll
  setlocal path+=/home/fin10/utility
endif

if !empty(glob('/home/inh10'))
  setlocal path+=/home/inh10/inhwin
endif

if !empty(glob('~/work/home/fin10'))
  setlocal path+=~/work/home/fin10/cccwincps
  setlocal path+=~/work/home/fin10/cps
endif
