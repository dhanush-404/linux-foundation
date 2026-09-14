#!/bin/bash

mkdir -p script-demo

echo "Linux practice" > script-demo/notes.txt

echo "Created file:"
ls -l script-demo

echo ""
echo "File content:"
cat script-demo/notes.txt

cp script-demo/notes.txt script-demo/backup.txt

echo ""
echo "After copying:"
ls -l script-demo
