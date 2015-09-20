#!/bin/bash
task="house"
d=$(date +%Y-%m-%d-%H)
t=$(date +%Y-%m-%d-%H:%M:00)
out="${0%/*}/_posts/$d-${task}.md"
if [ ! -e "$out" ]; then
cat > "$out" << EEOOTT
---
title: $task
task: $task
date: $t
$task:
  plan: 
  idea:
  land:
nocontent: 1
---
EEOOTT
fi
vi "$out"
