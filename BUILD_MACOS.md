# Building BetterServ on macOS

Quick reference guide for building BetterServ Firefox extension on macOS.

## Prerequisites

Install Node.js using one of these methods:

### Option 1: Using Homebrew (Recommended)
```bash
brew install node
```

### Option 2: Direct Download
Download and install from [nodejs.org](https://nodejs.org/)

Verify installation:
```bash
node --version  # Should show v18 or later
npm --version   # Should show npm version
```

## Building

### Method 1: Using the Build Script
```bash
cd /path/to/BetterServ
chmod +x build.sh
./build.sh
```

### Method 2: Manual Build
```bash
cd /path/to/BetterServ
npm install
npm run build
```

## Output

After building successfully, you'll find:
- `web-ext-artifacts/betterserv-0.4.9.zip` - The extension package
- `dist/` - Compiled files

## Installing in Firefox

### Temporary Installation (for development/testing)
1. Open Firefox
2. Go to `about:debugging#/runtime/this-firefox`
3. Click "Load Temporary Add-on..."
4. Navigate to the BetterServ directory and select `manifest.json`

### Permanent Installation
#### Firefox Developer Edition/Nightly:
1. Open Firefox Developer Edition or Nightly
2. Go to `about:config`
3. Set `xpinstall.signatures.required` to `false`
4. Go to `about:addons`
5. Click the gear icon → "Install Add-on From File..."
6. Select `web-ext-artifacts/betterserv-0.4.9.zip`

#### Regular Firefox:
Extensions must be signed by Mozilla. The extension needs to be submitted to [addons.mozilla.org](https://addons.mozilla.org).

## Development Mode

For active development with automatic reloading:
```bash
npm run dev
```

This starts Firefox with the extension loaded and watches for file changes.

## Troubleshooting

### "command not found: node"
Node.js is not installed. Install it using Homebrew or from nodejs.org.

### "npm install" fails
Try clearing the npm cache:
```bash
npm cache clean --force
rm -rf node_modules package-lock.json
npm install
```

### Build succeeds but extension doesn't work
Make sure you're loading the `manifest.json` from the repository root, not from inside the zip file.

## More Information

For detailed build instructions and other platforms, see [README.md](README.md).
