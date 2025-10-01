#!/usr/bin/env bash

# Build script for BetterServ Firefox extension
# This script works on Linux, macOS, and other Unix-like systems

set -e  # Exit on error

echo "Building BetterServ..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
  echo "Error: Node.js is not installed. Please install Node.js (v18 or later recommended)."
  echo "Visit: https://nodejs.org/"
  exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
  echo "Error: npm is not installed. Please install npm."
  exit 1
fi

echo "Using Node.js version: $(node --version)"
echo "Using npm version: $(npm --version)"

# Clean previous build
echo "Cleaning previous build..."
rm -rf dist

# Install dependencies
echo "Installing dependencies..."
npm install

# Build the extension
echo "Building extension..."
npm run build

# Create source archive (optional)
echo "Creating source archive..."
mkdir -p web-ext-artifacts
zip -r web-ext-artifacts/source.zip . -x ".vscode/*" -x "node_modules/*" -x ".git/*" -x "dist/*" -x "web-ext-artifacts/*"

echo ""
echo "✓ Build complete!"
echo "Extension package: web-ext-artifacts/betterserv-*.zip"
echo "Source archive: web-ext-artifacts/source.zip"
