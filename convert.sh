#!/usr/bin/env bash

for f in  *.raw; do
    # Process $i
    WAVFILENAME=$(basename -- "$f" .raw).wav
    if ! test -f "$WAVFILENAME"; then
    echo "$WAVFILENAME has not been converted..."
    sox -t raw -b 16 -e signed-integer -r 11025 -B -c1 "$f" "$WAVFILENAME"
fi
done