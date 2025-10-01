# BetterServ (Unofficial)

## Legal
This project is not affiliated with the IServ GmbH. It is an unofficial project and is not endorsed by the IServ GmbH.
If you are an representative of the IServ GmbH and want this project to be taken down, please contact me.

## License
This project is licensed under the [CC BY-NC-SA 4.0 license](https://creativecommons.org/licenses/by-nc-sa/4.0/).

## Description
Enhances the look of you schools  "IServ" Website by injecting CSS and JavaScript code.

It has to access all webpages, so every user can provide their own IServ webpage.
Dark Theme only for now.

Features:
- custom gradient in the banner of IServ
- better styling of the webpage (colors and fonts that look better)
- you can "like" files and folders. they will appear in the addon gui as clickable links
- custom icons

Coming soon:
- custom settings to incorporate user specific colors, images and functionalities

## Building from Source

### Prerequisites

- **Node.js** (v18 or later recommended)
- **npm** (comes with Node.js)

#### Installing Node.js

**macOS:**
```bash
# Using Homebrew
brew install node

# Or download from https://nodejs.org/
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install nodejs npm

# Or download from https://nodejs.org/
```

**Windows:**
Download and install from [https://nodejs.org/](https://nodejs.org/)

### Build Instructions

#### Option 1: Using the build script (Linux/macOS)

```bash
# Make the script executable (first time only)
chmod +x build.sh

# Run the build script
./build.sh
```

#### Option 2: Manual build (all platforms)

```bash
# Install dependencies
npm install

# Build the extension
npm run build
```

The build process will:
1. Compile TypeScript files to JavaScript
2. Process SCSS files to CSS
3. Create an extension package at `web-ext-artifacts/betterserv-*.zip`

### Installing in Firefox

#### Temporary Installation (for testing)

1. Open Firefox
2. Navigate to `about:debugging#/runtime/this-firefox`
3. Click "Load Temporary Add-on..."
4. Navigate to the built extension and select the `manifest.json` file from the repository root (not from the zip)

#### Permanent Installation (using the zip file)

**For Firefox Release/Beta:**
Extensions must be signed by Mozilla. Submit the built zip file to [addons.mozilla.org](https://addons.mozilla.org).

**For Firefox Developer Edition/Nightly:**
1. Open Firefox Developer Edition or Nightly
2. Navigate to `about:config`
3. Set `xpinstall.signatures.required` to `false`
4. Navigate to `about:addons`
5. Click the gear icon and select "Install Add-on From File..."
6. Select the `web-ext-artifacts/betterserv-*.zip` file

### Development

To run the extension in development mode with automatic reloading:

```bash
npm run dev
```

This will:
- Watch for TypeScript changes and recompile automatically
- Watch for SCSS changes and recompile automatically
- Start Firefox with the extension loaded in a temporary profile

### Build Output

After building, you'll find:
- `dist/` - Compiled JavaScript and CSS files
- `web-ext-artifacts/betterserv-*.zip` - The packaged extension ready for installation
- `web-ext-artifacts/source.zip` - Source code archive (if using build.sh)
