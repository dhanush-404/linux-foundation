#!/bin/bash

number="$1"

if [ "$number" -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
