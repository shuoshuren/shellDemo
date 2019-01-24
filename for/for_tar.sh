#!/bin/bash
# auto tar log file

for i in `find /var/log -name "*.log"`
do
        tar -czvf 2019.tgz $i
done

