#!/bin/bash

# Counts BRANCH events in a trace file generated by `jqf-repro -i`
# Usage: count_branches.sh [TRACE_FILE (default is 'main.log')]

if [ -z "$1" ]; then
  trace_file="main.log"
else
  trace_file="$1"
fi

grep "^BRANCH" "$trace_file" | wc -l


