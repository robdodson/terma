Please analyze and fix the GitHub issue: $ARGUMENTS.

Start by researching the issue:

* Use `gh issue view` to get the issue details
* Analyze the problem and identify all components that need changes

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

1. Before writing any code, present your plan
2. Yield the chat back to me so I can provide feedback on the plan

# Implementation Workflow

1. Create a new branch with a descriptive name for your work
2. Break the work into logical phases/commits
3. Create a commit for each phase with clear commit messages
4. After each commit, yield the chat back to me so I can review the code

IMPORTANT: Do not attempt to do a git push until you have yielded the chat
back and received a code review.

## Code Quality

* Ensure code passes linting and type checking
* Run relevant tests to verify changes

Remember to use the GitHub CLI (`gh`) for all GitHub-related tasks.
