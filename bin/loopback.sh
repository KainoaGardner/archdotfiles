#!/bin/bash

#check on or off

result=$(pactl list modules | grep module-loopback)

if [[ -n "$result" ]]; then
  pactl unload-module module-loopback
  echo "Turing loopback off..."
else
  pactl load-module module-loopback latency_msec=1
  echo "Turing loopback on..."
fi
