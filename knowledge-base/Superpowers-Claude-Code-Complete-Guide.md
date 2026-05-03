# Superpowers for Claude Code Complete Guide
## What is Superpowers
Superpowers is a professional software development methodology and skill suite for AI coding agents, built by Jesse Vincent (Prime Radiant). It adds strict industrial-grade development workflows to Claude Code, enabling autonomous work for hours without human intervention while producing production-quality code.

## Official Repository
https://github.com/obra/superpowers

## Installation (Claude Code)
Install directly from official Anthropic plugin marketplace:
```
/plugin install superpowers@claude-plugins-official
```
All skills activate automatically after installation, no extra configuration needed.

## Core Workflow (Automatic)
1. **Brainstorming**: Activates before any code is written. Refines rough requirements via targeted questions, explores design alternatives, presents design in small digestible chunks for validation, saves formal design document.
2. **Git Worktree Setup**: Creates isolated workspace on a new branch after design approval, runs project setup, verifies clean test baseline before any changes.
3. **Writing Implementation Plans**: Breaks approved design into 2-5 minute bite-sized tasks, each with exact file paths, expected code changes and explicit verification steps.
4. **Subagent Driven Development**: Dispatches fresh subagent per task with mandatory two-stage review: first check compliance with spec, then check code quality/security/best practices. Supports batch execution with human checkpoints.
5. **Test Driven Development**: Enforces strict RED-GREEN-REFACTOR cycle: writes failing test first, confirms test fails, writes minimal code to pass test, then refactors. Automatically deletes any code written before tests.
6. **Auto Code Review**: Runs automatically between tasks, reviews work against plan, reports issues by severity, critical issues block further progress.
7. **Branch Finalization**: Verifies all tests pass when tasks are complete, presents options (merge/PR/keep/discard), cleans up worktree automatically.

## Built-in Skills Library
### Testing
- **test-driven-development**: Complete RED-GREEN-REFACTOR cycle with testing anti-patterns reference
### Debugging
- **systematic-debugging**: 4-phase root cause analysis process with tracing techniques
- **verification-before-completion**: Ensures fixes are fully validated before declaring success
### Collaboration & Workflow
- **brainstorming**: Socratic method design refinement
- **writing-plans**: Generates detailed step-by-step implementation plans
- **executing-plans**: Batch task execution with human checkpoints
- **dispatching-parallel-agents**: Concurrent subagent workflows
- **requesting-code-review**: Pre-review checklist and automated quality checks
- **receiving-code-review**: Structured feedback response process
- **using-git-worktrees**: Isolated parallel branch development
- **finishing-a-development-branch**: Structured merge/PR decision workflow
- **subagent-driven-development**: Fast iteration with mandatory two-stage review
### Meta
- **writing-skills**: Best practice guide for creating new custom skills
- **using-superpowers**: Introduction to the entire skill system

## Core Philosophy
- **Test-Driven Development always**: Tests first, no exceptions
- **Systematic over ad-hoc**: Follow defined process instead of guessing
- **Complexity reduction**: Simplicity is primary goal
- **Evidence over claims**: Verify before declaring success

## Update
Superpowers updates automatically for Claude Code plugin installations.