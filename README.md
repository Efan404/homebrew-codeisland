# Homebrew CodeIsland

Unofficial Homebrew Tap for [CodeIsland](https://github.com/wxtsky/CodeIsland) - Real-time AI coding agent status panel for macOS Dynamic Island.

> ⚠️ **Disclaimer**: This is a third-party tap maintained by the community. It is not officially affiliated with the CodeIsland project.

## Prerequisites

- macOS 14.0 (Sonoma) or later
- [Homebrew](https://brew.sh/) installed

## Installation

```bash
# Add this tap
brew tap efan404/codeisland

# Install CodeIsland
brew install --cask codeisland
```

## Updating

```bash
# Update Homebrew and upgrade CodeIsland
brew update
brew upgrade --cask codeisland
```

Or with the built-in updater:

```bash
# CodeIsland supports auto-updates
brew reinstall --cask codeisland
```

## Uninstallation

```bash
brew uninstall --cask codeisland
brew untap efan404/codeisland
```

## Features

- ✅ Automatic version checking (daily)
- ✅ Auto-updates enabled
- ✅ Native Apple Silicon & Intel support

## Auto Update

This tap includes a GitHub Actions workflow that automatically checks for new CodeIsland releases daily. When a new version is detected, the cask is updated automatically.

## License

This tap follows the same license as the original CodeIsland project (MIT).
