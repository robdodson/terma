# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Terma (གཏེར་མ) is a library of philosophy and process for developing software with LLMs. It provides structured workflows and commands to guide AI-assisted development through various software engineering tasks.

## Build Commands

- **Build**: `./build.sh` - Processes markdown templates and outputs to `out/` directory
- **Requirements**: Deno runtime must be installed
- The build system uses a custom markdown processor with `!include()` directive for file inclusion

## Development Workflow

### Core Commands

1. **Exploration & Research**

   - `/explore` - Start each session with this command

2. **Planning & Implementation**

   - `/plan` - Plan changes before implementation

3. **Quality & Debugging**
   - `/fix-issue` - Fix reported bugs

## Code Architecture

### Project Structure

- Root directory contains main command templates (explore.md, fix-issue.md, plan.md)
- `archive/` contains additional specialized commands. Currently unused but we will draw from these files for inspiration.
- `lib/` contains philosophy and methodology documents that can be included in other templates
- `out/` contains processed command files after building

### Build System

- Uses Deno with a custom markdown processor
- Supports recursive file inclusion via `!include(path)` syntax
- Build script processes templates and resolves includes

## Testing and Quality

When developing or modifying Terma:

- Ensure markdown syntax is valid
- Test the build process after changes
- Verify `!include()` directives resolve correctly
- Check that processed files in `out/` maintain proper formatting

## Installation

To use Terma commands across all projects:

```bash
cp -r out/* ~/.claude/commands/
```

## Contributing to Terma

When modifying Terma itself:

1. Edit source files in root or `lib/` directory
2. Run `./build.sh` to process changes
3. Test commands in a sample project
4. Ensure philosophy remains consistent with lib/thought-process.md
5. Update relevant documentation if adding new commands
