#!/bin/bash

CATEGORY=$1
TARGET=$2

if [[ -z "$CATEGORY" || -z "$TARGET" ]]; then
  echo "Usage: $0 <category> <target>"
  exit 1
fi

OUTPUT="results/$(date +%F_%H-%M)_$CATEGORY.txt"
nuclei -u "$TARGET" -t "templates/$CATEGORY" -o "$OUTPUT"
echo "✅ Scan complete. Output saved to $OUTPUT"
