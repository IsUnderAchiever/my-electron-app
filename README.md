# My Electron App

This is an Electron application built with React, TypeScript, and Vite.

## Features

- React 18 with TypeScript
- Vite for fast development and building
- Electron for cross-platform desktop applications
- GitHub Actions for automated building and releasing

## Getting Started

### Prerequisites

- Node.js 16+
- npm or yarn

### Development

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start the development server:
   ```bash
   npm run dev
   ```

### Building

#### Local Build

To build the application locally:

```bash
# For all platforms (requires all build tools)
npm run build

# For local builds with mirror sources (recommended for Chinese developers)
npm run build:local

# For Debian package only
npm run build:deb
```

#### GitHub Actions Build

This repository is configured with GitHub Actions to automatically build and release Debian packages:

1. Push to `main` or `master` branch triggers a build
2. Creating a tag (e.g., `v1.0.0`) creates a new release with the Debian package

The workflow file is located at `.github/workflows/build-deb.yml`.

### Installation

#### From Debian Package

Download the `.deb` file and install it:

```bash
sudo dpkg -i "My Electron App-Linux-*.deb"

# If there are missing dependencies, run:
sudo apt-get install -f
```

### Configuration

- `electron-builder.json5` - Electron Builder configuration
- `.npmrc` - NPM configuration with mirror sources
- `.github/workflows/build-deb.yml` - GitHub Actions workflow

## Expanding the ESLint configuration

If you are developing a production application, we recommend updating the configuration to enable type aware lint rules:

- Configure the top-level `parserOptions` property like this:

```js
export default {
  // other rules...
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
    project: ['./tsconfig.json', './tsconfig.node.json'],
    tsconfigRootDir: __dirname,
  },
}
```

- Replace `plugin:@typescript-eslint/recommended` to `plugin:@typescript-eslint/recommended-type-checked` or `plugin:@typescript-eslint/strict-type-checked`
- Optionally add `plugin:@typescript-eslint/stylistic-type-checked`
- Install [eslint-plugin-react](https://github.com/jsx-eslint/eslint-plugin-react) and add `plugin:react/recommended` & `plugin:react/jsx-runtime` to the `extends` list