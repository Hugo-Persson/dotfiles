# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Fish shell configuration directory containing custom configurations, functions, completions, and plugins for an advanced Fish shell setup.

## Architecture

### Configuration Structure
- `config.fish` - Main configuration file with PATH exports and basic setup
- `aliases.fish` - Custom aliases and functions, including editor setup with API key integration
- `fish_plugins` - Plugin manifest managed by Fisher plugin manager
- `conf.d/` - Auto-loaded configuration files for specific tools and features
- `functions/` - Custom Fish functions, primarily FZF-related utilities
- `completions/` - Tab completion definitions for various tools
- `themes/` - Shell theme configurations

### Key Components

#### Plugin Management
- Uses Fisher (`jorgebucaran/fisher`) as the plugin manager
- Plugins are defined in `fish_plugins` and managed via Fisher commands
- Key plugins: `fzf.fish`, `docker-abbr`, `pnpm-shell-completion`

#### Development Tools Integration
- Extensive abbreviations for common development workflows in `conf.d/abbr.fish`
- Docker abbreviations and completions
- pnpm/npm workflow shortcuts
- Git workflow aliases (lazygit, gitui)
- Editor integration (nvim/neovide with API key sourcing)

#### FZF Integration
- Comprehensive FZF integration through `patrickf1/fzf.fish`
- Custom FZF functions for file search, git operations, and directory navigation
- Enhanced preview capabilities with `bat` integration

## Common Tasks

### Plugin Management
```fish
fisher install <plugin>     # Install new plugin
fisher remove <plugin>      # Remove plugin
fisher update               # Update all plugins
fisher list                 # List installed plugins
```

### Key Abbreviations
- `p` - Interactive pnpm script runner with FZF
- `v` - Open nvim
- `vfzf` - Open file in nvim using FZF file picker
- Docker: `dc`, `dcu`, `dcd`, `dcr` for docker-compose operations
- `lg` - lazygit, `gu` - gitui for Git operations

### Development Workflow
- Uses `eza` for enhanced `ls` functionality
- `bat` for syntax-highlighted file previews
- Tmux integration with session management shortcuts
- Profile-based editor configuration (checks `~/profile.txt`)

## File Organization

### Configuration Loading
Files in `conf.d/` are automatically sourced by Fish in alphabetical order. Key files:
- `00_pre_req.fish` - Early initialization
- `abbr.fish` - Command abbreviations
- Tool-specific configs (e.g., `docker_abbr.fish`, `fzf.fish`)

### Function Definitions
Custom functions in `functions/` directory, primarily FZF-related utilities for enhanced file and directory operations.

## Environment Setup

### Required External Tools
- `eza` (modern ls replacement)
- `bat` (syntax highlighting cat replacement)  
- `fzf` (fuzzy finder)
- `lazygit`, `gitui` (Git TUIs)
- `tmux` (terminal multiplexer)
- `gum` (interactive prompts)
- Various development tools (docker, pnpm, etc.)

### API Key Management
- Editor functions source API keys from `~/secrets/` directory
- Profile-based configuration switching via `~/profile.txt`

## Customization Guidelines

- Add new abbreviations to `conf.d/abbr.fish`
- Tool-specific configurations go in separate `conf.d/` files
- Custom functions go in `functions/` directory
- Use Fisher for plugin management rather than manual installation
- Follow Fish naming conventions for functions and variables