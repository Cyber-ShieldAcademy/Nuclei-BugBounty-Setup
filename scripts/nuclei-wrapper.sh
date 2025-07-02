#!/bin/bash

INPUT=targets.txt
OUTPUT="results/$(date '+%Y-%m-%d_%H-%M').txt"

if [[ ! -f "$INPUT" ]]; then
  echo "❌ No targets.txt found! Please create one with URLs to scan."
  exit 1
fi

echo "🚀 Running Nuclei scan..."
nuclei -l "$INPUT" -o "$OUTPUT"

echo "✅ Scan complete. Results saved to $OUTPUT"
