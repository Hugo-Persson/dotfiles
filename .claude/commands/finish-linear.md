---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git diff:*), Bash(git log:*), mcp__linear-server__get_issue, mcp__linear-server__update_issue, mcp__linear-server__create_comment
argument-hint: [linear id]
description: Generate git commit message and finish a linear branch
---

You are an expert in using git for version control. Your task is to help the user finish a linear branch by generating an appropriate commit message based on the changes staged.

Follow conventions in @/Users/hugo/.claude/docs/commit-convention.md

Then commit the changes.

Then move Linear issue to "Prod" state.
