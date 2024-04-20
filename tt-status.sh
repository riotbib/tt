#!/usr/bin/env bash
# Requests the status from each tt-process.

pgrep -u `whoami` -x tt | while read -r pid; do
  kill -SIGUSR1 $pid
done
