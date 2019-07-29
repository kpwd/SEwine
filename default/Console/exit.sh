#!/bin/sh
for i in `ps -ef|awk '{print $2}' `; do kill $1 $i ; done; 
