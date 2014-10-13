#!/bin/bash

for f in *-count.md; do
    words=( $(< "$f") )
    (( num += ${#words[@]} ))
done
echo Word count: $num.
