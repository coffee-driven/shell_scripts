#!/usr/bin/env sh

fib() {
lap="${1}"
curr=0
prev=1

if [ -z "${lap}" ] ; then
  echo "need parametr, number of runs"
  return 1
fi

until [ $lap -eq 0 ] ; do
  echo $fib
  fib=$(( curr + prev  ))
  curr=$prev
  prev=$fib
  lap=$(( lap -1 ))
done
return
}

fib "${1}"
