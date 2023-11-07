 #!/bin/bash

 set -e

 file=pod-error-crash.txt

 kubectl get pods -A --no-headers | grep "CrashLoopBackOff\|Error" > $file

 length=$(cat $file | wc -l)

 for ((i=1;i<=length;i++)); do
    ns=$(cat $file | head -$i | tail -1 | awk '{print $1}')
    pod=$(cat $file | head -$i | tail -1 | awk '{print $2}')
    echo "$(date) : kubectl delete pod $pod --namespace $ns"
 done