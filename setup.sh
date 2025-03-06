#!/bin/bash

# Initialize and update submodules
git submodule update --init --recursive

# Ensure submodules are on the main branch and up to date
git submodule foreach --recursive git checkout main
git submodule foreach --recursive git pull origin main

# Print the current branch of each submodule
git submodule foreach --recursive git branch --show-current

