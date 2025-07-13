# Decompose

Create a subagent and use ultra thinking within the agent to preserve our context window.

# Thought Process

# Development Thought Process

Slow is smooth and smooth is fast. We only want to change one thing at a time and we want to make each cut deliberately without ever thrashing around aimlessly.

## Adapt to Context

This thought process is a guide, not a rigid checklist. Use judgment to:

* Skip steps that don't apply (e.g., tests for config changes)
* Spend more time on steps that matter for the current task
* Recognize when a simple change needs a simple approach
* Scale your process to match the complexity of the problem

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

* Start simple and refactor as patterns emerge
* Start with types and data structures in dedicated files
* Extract modules when a file exceeds ~200 lines or has multiple responsibilities
* Prioritize clarity - sometimes that means keeping things together, sometimes splitting them apart
* Name files and functions clearly - prefer descriptive names over comments
* Keep related functionality together until abstraction boundaries become clear
* Let the code structure evolve based on actual needs, not premature optimization
* Watch the linguistics of the codebase develop and allow it to grow organically

## Progress Checkpoints

Consider these verification steps based on the type of change:

* Does the change work as intended?
* Have we introduced any obvious issues?
* Does the code follow project patterns where relevant?
* Are we still aligned with the original goal?

Before proceeding, verify:

* \[ ] Current changes compile/run without errors
* \[ ] Tests pass (if applicable)
* \[ ] The solution handles edge cases identified so far
* \[ ] Code follows project conventions (check CLAUDE.md)
* \[ ] We understand how far through the process we are

## Test-First Approach (When Applicable)

For features that can be verified programmatically:

1. Write tests that define expected behavior
2. Implement the minimal code to pass tests
3. Refactor for clarity while keeping tests green
4. Use screenshots or output verification for UI changes

Note: Not all changes require tests (e.g., documentation, config files, CI/CD workflows)

## Leverage Available Tools (As Needed)

* Use `git log` and `git blame` to understand code history
* Run tests frequently during development
* Use the linter before committing
* Check existing patterns with grep/search before implementing new ones
* Verify solutions against the existing domain and codebase

## When to Pause and Discuss

Stop and communicate if:

* The implementation diverges significantly from the original plan
* A simpler solution becomes apparent
* Technical debt is accumulating (e.g., multiple TODOs)
* The current path doesn't feel sustainable
* You're spinning without making progress. For example, if you've made 3+ attempts without progress
* Our solution is not going to scale to known requirements
* Something doesn't feel right about the direction

Don't feel the need to try and make up for confusion or strange territory. Let's regroup together - it's always easier to solve a problem with two heads than one.

## Remember

All problems can be solved easily if the task breakdown and scoping are performed correctly. We have to get these parts right and understand if we're veering off track and what to do about it.

# Decompose

Let's break this large module/monolith apart into smaller modular chunks. This might be a fractal process that takes several iterations to get right. So let's focus on first working out the right divisions of the code and breaking it apart without refactoring anything along the way. We want to just break it into logical units along whatever lines already exist and then whatever tension appears, we can then start to refactor and think more granularly from there. But any division of large files of a mixed function into somewhat useful groupings, just to preserve context windows of humans and albums alike is always useful.

## Modules

Modules should be namespaced carefully, they should be decoupled as much as possible, and be of medium size. You don't want a constellation of tiny modules, everything overly decomposed, but when a module is straining to find a single focus, it should split into two modules, and this is something we should do all the time throughout our process of software engineering. To identify when a file or a module is growing beyond its limit, and consider the best way to split off what we're doing into at least two different pieces and continue on. So not boiling the ocean and re-igitating the whole module or code base, but splitting modules regularly to make sure we don't end up with giant files that are hard to traverse.

Modules may mean simply splitting a file into two, or a more formal decision about directory structure in the application. When we create or change the purpose of any *directory* module, we should write an MOD.md file in the module root.

## Domain-Driven Design

We want to follow the best practices of domain-driven design, thinking about bounded contexts and ubiquitous language within those bounded contexts and how the interchanges and boundaries between those contexts will be modeled in our code base and in the runtime dynamics of our system. It's important to consider the conceptual model presented by the application's types and try as best as we can to fit it to what's intuitive to humans and true to the problem domain finding a way to express only valid statements ideally making any invalid or confusing states unrepresentable within our domain when possible. That extends to error handling and types and API design, the names of functions and modules and parameters and even variables within the code are all part of a story that will be experienced by us traversing this code base in the future and so we need to be very mindful of how we construct it.
