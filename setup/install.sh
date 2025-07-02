#!/bin/bash

echo "🔧 Installing Go tools for Nuclei Bug Bounty Setup..."

# Install Go tools
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

# Create default output folders
mkdir -p results scans

# Mark setup complete
echo "✅ Tools installed successfully."
