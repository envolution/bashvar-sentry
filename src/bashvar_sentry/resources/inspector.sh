#!/bin/bash

# set -e # We need commands to fail silently (We dropped PATH so we expect commands to fail)

# Path to the user's script is the first argument
TARGET_SCRIPT="$1"

if [ -z "$TARGET_SCRIPT" ]; then
  echo "Error: No target script path provided." >&2
  exit 1
fi

if [ ! -f "$TARGET_SCRIPT" ]; then
  echo "Error: Target script not found at '$TARGET_SCRIPT'" >&2
  exit 2
fi

# Source the user's script. Any commands inside will fail if they
# are not bash built-ins, because PATH is empty in the sandbox.
# shellcheck disable=SC1090
. "$TARGET_SCRIPT"

# Dump all variables in a machine-readable format.
# This command is a shell built-in and will always be available.
declare -p
