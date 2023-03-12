#!/bin/bash
chmod +x recent.sh
ls -t | head -n "$1" | while read filename; do
    name=$(echo "$filename" | cut -d. -f1)
    echo "$name"
done
