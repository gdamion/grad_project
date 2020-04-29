#!/usr/bin/env bash
res=$(($(rostopic list | wc -l)))
if (($res > 0))
then
    echo "rosmaster in already running"
else
    roscore
fi
