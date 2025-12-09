#!/bin/bash
# Script to reset DPVO repository and all submodules to origin remote state

set -e  # Exit on error

echo "=== Resetting DPVO to origin/main ==="
cd ~/DPVO

# Fetch latest changes from origin
git fetch origin

# Reset main repository to origin/main
git reset --hard origin/main

# Clean all untracked files in main repository
git clean -fdx

echo ""
echo "=== Resetting all submodules ==="

# Reset all submodules to their tracked commits
git submodule foreach --recursive 'git reset --hard HEAD && git clean -fdx'

# Update submodules to match what the parent repository expects
git submodule update --init --recursive

echo ""
echo "=== Verification ==="
git status

echo ""
echo "✓ Repository reset complete!"
