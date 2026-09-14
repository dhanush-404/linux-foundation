#!/bin/bash

choice="$1"

case "$choice" in
    start)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    restart)
        echo "Restarting..."
        ;;
    *)
        echo "Unknown option"
        ;;
esac
