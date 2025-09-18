#!/bin/bash

# current_dir=$(pwd)

if [ ! -e .venv/ ]; then
  echo "Creating venv."
  python3 -m venv .venv
  echo "Created venv."
fi

echo "Turning venv on."
source .venv/bin/activate





