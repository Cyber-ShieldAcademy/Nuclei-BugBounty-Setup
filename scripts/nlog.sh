#!/bin/bash
echo "🧾 Last 5 Scan Results:"
echo "------------------------"
ls -lt --time-style=long-iso results/*.txt 2>/dev/null | head -n 5 | while read -r perm links user group size date time file; do
  echo "📅 $date $time -> 📄 $(basename "$file") | 📦 $size"
done
