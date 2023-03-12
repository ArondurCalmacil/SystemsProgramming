#!/bin/bash
chmod +x sizeof.sh
for filename in "$@"
do
  size=$(wc -c < "$filename")
  total=$((total + size))
done

echo "Size of evrything: $total bytes"
