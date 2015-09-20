#!/bin/bash
d=$(date +%Y-%m-%d-%H)
t=$(date +%Y-%m-%d-%H:%M:00)
out="${0%/*}/_posts/$d-chore.md"
if [ ! -e "$out" ]; then
cat > "$out" << EEOOTT
---
title: chore
task: chore
date: $t
chore:
  mop: 
  lawn:
  weed:
nocontent: 1
---
EEOOTT
fi
vi "$out"
