#!/bin/bash
set -e

echo "Hello inside Docker, $1!"

# Write output to GITHUB_OUTPUT
echo "message=Hello $1 from Docker Action" >> "$GITHUB_OUTPUT"
