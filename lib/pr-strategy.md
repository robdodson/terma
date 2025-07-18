# PR Strategy

**Plan Small PRs**

- Break the solution into small, focused pull requests
- Each PR should address one specific aspect (under 200 lines when possible)
- Prioritize changes that can be merged without breaking functionality

**For Each Small PR:**

- Search the codebase for relevant files
- Use TDD where appropriate (write failing tests first)
- Implement only the minimal changes needed. Avoid adding features that were not requested.
- Push and create a PR with clear title. If the work needs to be spread
  across multiple PRs you can number them (e.g., "[1/3] Add validation -
  fixes #123")
