#!/bin/sh
for i in `ps -ef|grep .exe |awk '{print $2}' `; do kill $1 $i ; done; 
