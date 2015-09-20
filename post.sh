#!/bin/bash
title="$1"
stitle=$(echo "$title" | sed 's, ,-,g')
d=$(date +%Y-%m-%d-%H)
t=$(date +%Y-%m-%d-%H:%M:00)
out="${0%/*}/_posts/$d-"$stitle".md"
if [ ! -e "$out" ]; then
cat > "$out" << EEOOTT
---
title: $title
date: $t
---
EEOOTT
fi
vi "$out"
