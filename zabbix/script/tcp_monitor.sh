#!/bin/bash 
#shuidi
#scripts for tcp status 
function SYNRECV { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'SYN-RECV' | awk '{print $2}'
} 
function ESTAB { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'ESTAB' | awk '{print $2}'
} 
function FINWAIT1 { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'FIN-WAIT-1' | awk '{print $2}'
} 
function FINWAIT2 { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'FIN-WAIT-2' | awk '{print $2}'
} 
function TIMEWAIT { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'TIME-WAIT' | awk '{print $2}'
} 
function LASTACK { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'LAST-ACK' | awk '{print $2}'
} 
function LISTEN { 
/usr/sbin/ss -ant | awk '{++s[$1]} END {for(k in s) print k,s[k]}' | grep 'LISTEN' | awk '{print $2}'
}

  case $1 in
SYNRECV)
SYNRECV;
;;
ESTAB)
ESTAB;
;;
FINWAIT1)
FINWAIT1;
;;
FINWAIT2)
FINWAIT2;
;;
TIMEWAIT)
TIMEWAIT;
;;
LASTACK)
LASTACK;
;;
LISTEN)
LISTEN;
;;
      *)
echo $"USAGE:$0 {ESTAB|LISTEN|TIMEWAIT|FINWAIT1|FINWAIT2|SYNRECV|LASTACK}"
    esac

 
 