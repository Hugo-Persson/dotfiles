---
allowed-tools: Bash(git:*), Bash(pnpm:add), Bash(pnpm:db:*), Bash(infisical:run:--:turbo:*), Linear(mcp:*), Linear(linear-server - update_issue), GitHub(mcp:create_pull_request)
argument-hint: [task_id]
description: This template helps you work on a linear task
---

<task>
  Help me work on the linear task $ARGUMENTS
</task>

<focus>
  Working on the linear task description and understanding the code base.
</focus>
<instructions>

# Begin work

1. Create a plan for solving the issue
   - Identify the main components needed
   - If the task is complex, break it down into smaller tasks
   - Create step by step plan
   - Ask user for if this plan looks good
   - If yes update the issue description with the plan
   - If no, iterate on the plan until user approves
   - Make each step a checkbox that can be checked off as you complete it
2. Move task to the "In Progress" state
3. Start working on each step in the plan

- Regularly commit changes with meaningful commit messages, Follow conventions in @/Users/hugo/.claude/docs/commit-convention.md
- If you get stuck, ask for help or clarification
- As eash step is completed check it off in the issue description and add comment with what you have done

4. Once all steps are completed, update documentation if needed
5. Commit and push changes
6. Open a github pull request for the changes
7. Wait on user to review

   </instructions>
