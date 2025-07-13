# Code Review

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

Review the code we have written with these priorities:

## Core Principles

**Channel the spirit of Rich Hickey**: Embrace simplicity, embrace immutability, embrace data.

Also consider the lessons of Erlang (Joe Armstrong), Elixir (José Valim), Elm (Evan Czaplicki), and Rust.

## Specific Focus Areas

### Code Structure

* **Extract pure functions** for common logic and reusable operations
* **Pay attention to the story that parameters and names tell** - use the code as a self-documenting structure
* **Examine similar code** to ensure consistency and avoid duplication
* **Use consistent naming conventions** that clearly express intent
* **Decoupled modules** - consider inversion of control, decomposition, and breaking apart large files by extracting clear domains
* **Reusable components** - identify robust abstractions that would clarify the code and make the functionality more robust

### Type Safety & Data

* **Make invalid states unrepresentable**

### Error Handling

* **Handle errors gracefully, or design APIs that make errors impossible**
* Prefer throwing over silent failures or unclear undefined returns

### Functional Style

* **Prefer a pure, functional programming style** over imperative approaches
* Favor immutable data transformations in library code
* Minimize side effects and make them explicit when necessary

### Code Style

We always prefer functional programming over spaghetti-code mutable references. Functional programming here means thinking about types and transitions between them explicitly and a focus on values over places-in-memory. It means modeling functions as the primary unit. So avoiding classes except when they are the exact correct representation for something like a resource with a lifetime kind of concept or a service with pointers to other services where classes really are an elegant way of modeling those dynamics. Wherever we can prefer static pure functions, we should do so. We don't need to abuse ideas like carrying or partial application or any convoluted functional programming concepts. More so, the spirit of it which is that function orientation is all that you need. High order functions are of course encouraged as usual and we should prefer map filter and reduce typically to standard for loop type operations. But it depends on the context and we shouldn't be absolutist in any language that we're writing about. this kind of thing.

We're possible we would prefer to represent things as plain data that can be printed, manipulated and operated on by a small set of well-designed functions. This is very much inspired by the closure, language, and Ridge Hickey's discussion about software engineering best practices.

Modules should be namespaced carefully, they should be decoupled as much as possible, and be of medium size. You don't want a constellation of tiny modules, everything overly decomposed, but when a module is straining to find a single focus, it should split into two modules, and this is something we should do all the time throughout our process of software engineering. To identify when a file or a module is growing beyond its limit, and consider the best way to split off what we're doing into at least two different pieces and continue on. So not boiling the ocean and re-igitating the whole module or code base, but splitting modules regularly to make sure we don't end up with giant files that are hard to traverse.

Modules may mean simply splitting a file into two, or a more formal decision about directory structure in the application. When we create or change the purpose of any *directory* module, we should write an MOD.md file in the module root.

### Domain-Driven design

We want to follow the best practices of domain-driven design, thinking about bounded contexts and ubiquitous language within those bounded contexts and how the interchanges and boundaries between those contexts will be modeled in our code base and in the runtime dynamics of our system. It's important to consider the conceptual model presented by the application's types and try as best as we can to fit it to what's intuitive to humans and true to the problem domain finding a way to express only valid statements ideally making any invalid or confusing states unrepresentable within our domain when possible. That extends to error handling and types and API design, the names of functions and modules and parameters and even variables within the code are all part of a story that will be experienced by us traversing this code base in the future and so we need to be very mindful of how we construct it.
