#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    COUNT="$(wc -w "${f}" | cut -d ' ' -f1)"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $COUNT"
  fi
done

