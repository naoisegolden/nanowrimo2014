#!/bin/bash
for f in *-count.md; do
    words=( $(< "$f") )
    (( num += ${#words[@]} ))
done
echo Total word count: $num.

for f in $1; do
    words=( $(< "$f") )
    (( num2 += ${#words[@]} ))
done
echo File word count: $num2