#!/bin/bash

TRIES=3

questdb/bin/questdb.sh stop
questdb/bin/questdb.sh start
sleep 5

cat queries.sql | while read query; do
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches

    echo "$query";
    for i in $(seq 1 $TRIES); do
        curl -sS --max-time 600 -G --data-urlencode "query=${query}" 'http://localhost:9000/exec?timings=true' 2>&1 | grep '"timings"' ||
            (questdb/bin/questdb.sh stop >/dev/null 2>&1; questdb/bin/questdb.sh start >/dev/null 2>&1; sleep 5; echo 'null')
        echo
    done;
done;
