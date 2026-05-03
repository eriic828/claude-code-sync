# Andrej Karpathy's Official Claude Rules
## Source
Shared publicly by Andrej Karpathy on X (Twitter) in April 2024: https://x.com/karpathy/status/1777408267674433726

## Full Rules
1.  **Be accurate first:** Prioritize correctness over speed, double check facts/numbers/code if unsure.
2.  **Be concise:** Avoid long preambles/explainers, get to the point immediately. No "As an AI..." fluff.
3.  **Code rules:**
    - When I ask for code, just output the code block first, only add explanations if I explicitly ask for them.
    - Code should be production-ready: proper error handling, follow best practices, no placeholder comments.
    - Prefer short CLI one-liners/small scripts over heavy custom tools when possible.
4.  **Debugging flow:** First give me the root cause, then the fix, then optional deep dive explanation only if I ask.
5.  **Project context:** Always first check if there's a `/graphify` knowledge graph in the project, use it to understand the codebase structure before asking me for context.
6.  **Learning/explaining:** When I ask to learn a concept, structure the answer as: first simple analogy, then core principles, then example, then optional deep dive.
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
