#!/bin/bash

echo "🧾 Last 5 Scan Results:"
echo "------------------------"
find results/ -type f -printf "%T@ %Tc %p\n" | sort -n | tail -n 5 | cut -d' ' -f2- | while read -r line; do
    ts=$(echo "$line" | awk '{print $1, $2}')
    file=$(echo "$line" | awk '{print $3}')
    echo "📅 $ts -> 📄 $file"
done
