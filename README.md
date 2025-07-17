# Terma (གཏེར་མ)

[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

This is a highly-opinionated library of philosophy and process for developing software with LLMs, specifically Claude Code.

Copy/clone the contents of `out` into `~/.claude/commands` to install these across all projects.

## Quick Start

Currently available commands:

- `/explore` - Begin each session with this command to understand the codebase
- `/plan` - Plan changes to the application before implementation
- `/fix-issue` - Fix reported bugs or issues

Additional commands are in development in the `archive/` directory and will be released in future updates.

We currently assume a protocol of `LOG.md`, `BUGS.md`, `SPEC.md`, `CLAUDE.md` etc. but this will and should be customized to fit.

## Development Workflow

With the current commands:

- **Understanding a codebase**: Start with `/explore` to get familiar with the project structure and conventions
- **Planning changes**: Use `/plan` to outline implementation approach before coding
- **Fixing issues**: Use `/fix-issue` to address bugs or problems systematically

Future workflow patterns (coming soon):

- Feature development: explore → plan → implement → review
- Bug fixes: report → debug → resolve → review
- Architecture improvements: explore → research → decompose → review

## Customizing

The build depends on `deno`.
You can edit anything in `lib` or the root and run and use `./build.sh` to rebuild all. We use a simple `remark` transform for text inclusion, nothing fancy.

## Roadmap

Commands currently in development (see `archive/` directory):

- `/research` - Deep investigation of specific codebase aspects
- `/implement` - Spawn subagents for implementation
- `/debug`, `/code-review`, `/harden` - Quality assurance commands
- `/progress`, `/next-up` - Progress tracking and logging
- `/bug-report`, `/resolve` - Bug management workflow
- `/prototype` - Technology spike experiments
- `/decompose` - Architecture improvements

## Notes

The `subagent.md` file in the archive encourages "heavy thinking", which may burn through usage quickly. Consider customizing it manually when these commands are released.

## License

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
