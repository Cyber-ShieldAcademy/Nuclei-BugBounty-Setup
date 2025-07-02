#!/bin/bash

CATEGORY=$1
TARGET=$2

if [[ -z "$CATEGORY" || -z "$TARGET" ]]; then
  echo "Usage: $0 <category> <target>"
  exit 1
fi

OUTPUT="results/$(date +%F_%H-%M)_$CATEGORY.txt"
nuclei -l "$INPUT" -t "$TEMPLATE_PATH" -o "$OUTPUT" -ni nuclei-ignore.yaml
echo "✅ Scan complete. Output saved to $OUTPUT"


# Convert plain text results to HTML (very basic)
if [ -s "$OUTPUT" ]; then
    HTML_OUTPUT="${OUTPUT%.txt}.html"
    echo "<pre>" > "$HTML_OUTPUT"
    cat "$OUTPUT" >> "$HTML_OUTPUT"
    echo "</pre>" >> "$HTML_OUTPUT"
fi
