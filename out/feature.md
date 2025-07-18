Let's work on a feature: $ARGUMENTS

# PR Strategy

**Plan Small PRs**

* Break the solution into small, focused pull requests
* Each PR should address one specific aspect (under 200 lines when possible)
* Prioritize changes that can be merged without breaking functionality

**For Each Small PR:**

* Search the codebase for relevant files
* Use TDD where appropriate (write failing tests first)
* Implement only the minimal changes needed. Avoid adding features that were not requested.
* Push and create a PR with clear title. If the work needs to be spread
  across multiple PRs you can number them (e.g., "\[1/3] Add validation -
  fixes #123")

# Planning Workflow

Before writing any code, present your plan and yield the chat back to me so I
can write a response.

# Implementation Workflow

* Create a new branch with a descriptive name for your work
* Break the work into logical phases/commits
* Create a commit for each phase with clear commit messages
* After each significant change, yield the chat back to me so I can review and
  provide feedback

## Code Quality

* Ensure code passes linting and type checking
* Run relevant tests to verify changes

Remember to use the GitHub CLI (`gh`) for all GitHub-related tasks.
