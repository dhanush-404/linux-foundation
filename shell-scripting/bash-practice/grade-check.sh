#!/bin/bash

score="$1"

if [ "$score" -ge 80 ]; then
    echo "Grade A"
elif [ "$score" -ge 60 ]; then
    echo "Grade B"
else
    echo "Grade C"
fi
