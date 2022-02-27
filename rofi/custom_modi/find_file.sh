#!/usr/bin/env bash

# if no args, output all files
if [ $# -eq 0 ]
  then
    locate -i ~
fi

#else open arg
xdg-open $@