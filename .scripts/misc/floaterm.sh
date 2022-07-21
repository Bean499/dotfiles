#!/bin/bash
tabbed -n "floaterm" -d -c -g $(slop -q -o -f "%wx%h+%x+%y") -r 2 st -w ""
