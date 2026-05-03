# Graphify for Claude Code Official Usage Guide
## What is Graphify
Graphify is an AI coding assistant skill that turns your entire codebase, documentation, papers, videos/audio into a structured knowledge graph, making Claude Code understand projects up to 10x faster and reduce token usage by >70%.

## Core Usage Rules (Auto Enforced)
- Before answering architecture or codebase questions, read `graphify-out/GRAPH_REPORT.md` for god nodes and community structure first
- If `graphify-out/wiki/index.md` exists, navigate it instead of reading raw files directly
- For cross-module relation questions, prefer:
  - `graphify query "<your question>"`
  - `graphify path "<Node A>" "<Node B>"`
  - `graphify explain "<concept>"`
- After modifying code files, run `graphify update .` to refresh the graph (AST-only, no API cost)

## Common Commands
### Basic
```
/graphify .                   # Build full knowledge graph for current project
/graphify ./src               # Target specific directory
/graphify . --update          # Incremental update for changed files only
/graphify . --mode deep       # Deep mode for large projects, extract more inferred edges
```

### Query
```
/graphify query "show auth flow"
/graphify path "UserController" "Database"
/graphify explain "AsyncTaskQueue"
```

### Productivity
```
/graphify . --watch           # Auto update graph when files change
/graphify . --obsidian        # Export graph as Obsidian vault
/graphify . --no-viz          # Skip HTML export, only generate report and JSON
```