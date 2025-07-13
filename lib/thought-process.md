# Development Thought Process

Slow is smooth and smooth is fast. We only want to change one thing at a time and we want to make each cut deliberately without ever thrashing around aimlessly.

## Adapt to Context

This thought process is a guide, not a rigid checklist. Use judgment to:

- Skip steps that don't apply (e.g., tests for config changes)
- Spend more time on steps that matter for the current task
- Recognize when a simple change needs a simple approach
- Scale your process to match the complexity of the problem

## Development Process

Adapt this general flow to the task at hand:

1. **Explore**: Read relevant files and understand the current implementation
2. **Plan**: Create a concrete plan before writing any code
3. **Implement**: Make one small, testable change at a time
4. **Verify**: Test each change before moving to the next
5. **Commit**: Create clear commits that explain the why, not just the what

## Core Principles

We want a precise and orderly way of moving through problems that may be ambiguous. We must be careful about the sizing of each change and think about the staged delivery of every feature.

Always start with the types, the data, the way that we can start to make something tangible happen and exist. Build up layers of complexity slowly. Don't abstract up front into a complex system nor write everything in one file and wait till the very end to organize it.

## Code Organization Principles

- Start simple and refactor as patterns emerge
- Start with types and data structures in dedicated files
- Extract modules when a file exceeds ~200 lines or has multiple responsibilities
- Prioritize clarity - sometimes that means keeping things together, sometimes splitting them apart
- Name files and functions clearly - prefer descriptive names over comments
- Keep related functionality together until abstraction boundaries become clear
- Let the code structure evolve based on actual needs, not premature optimization
- Watch the linguistics of the codebase develop and allow it to grow organically

## Progress Checkpoints

Consider these verification steps based on the type of change:

- Does the change work as intended?
- Have we introduced any obvious issues?
- Does the code follow project patterns where relevant?
- Are we still aligned with the original goal?

Before proceeding, verify:

- [ ] Current changes compile/run without errors
- [ ] Tests pass (if applicable)
- [ ] The solution handles edge cases identified so far
- [ ] Code follows project conventions (check CLAUDE.md)
- [ ] We understand how far through the process we are

## Test-First Approach (When Applicable)

For features that can be verified programmatically:

1. Write tests that define expected behavior
2. Implement the minimal code to pass tests
3. Refactor for clarity while keeping tests green
4. Use screenshots or output verification for UI changes

Note: Not all changes require tests (e.g., documentation, config files, CI/CD workflows)

## Leverage Available Tools (As Needed)

- Use `git log` and `git blame` to understand code history
- Run tests frequently during development
- Use the linter before committing
- Check existing patterns with grep/search before implementing new ones
- Verify solutions against the existing domain and codebase

## When to Pause and Discuss

Stop and communicate if:

- The implementation diverges significantly from the original plan
- A simpler solution becomes apparent
- Technical debt is accumulating (e.g., multiple TODOs)
- The current path doesn't feel sustainable
- You're spinning without making progress. For example, if you've made 3+ attempts without progress
- Our solution is not going to scale to known requirements
- Something doesn't feel right about the direction

Don't feel the need to try and make up for confusion or strange territory. Let's regroup together - it's always easier to solve a problem with two heads than one.

## Remember

All problems can be solved easily if the task breakdown and scoping are performed correctly. We have to get these parts right and understand if we're veering off track and what to do about it.
