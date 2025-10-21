#!/bin/bash

# Update package list and install vim and curl
apt-get update && apt-get install -y vim curl

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs

# Install Gemini CLI globally
npm install -g @google/gemini-cli