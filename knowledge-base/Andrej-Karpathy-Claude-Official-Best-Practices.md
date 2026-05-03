
---
## 🚀 Karpathy's Hidden Pro Tips (Bonus)
### 1. One-click bug fix without explanation
Use this prompt when you want fixed code directly, no verbose explanations:
```
Fix this bug, output ONLY the full corrected code block, no explanations, no comments.
```
### 2. Cut 70% tokens for large projects
After running `/graphify .` to build knowledge graph, add this sentence to all your questions, Claude will only use the graph instead of scanning all raw files:
```
Use ONLY the graphify knowledge graph in this project to answer, do not read raw files.
```
### 3. Precision debug template
Use this fixed structure to debug, 3x faster than vague questions:
```
I have a bug where <describe symptom>. The error message is <paste error>. The relevant code is <paste code snippet>. First give the exact root cause, then give the minimal fix code block, no extra explanations.
```