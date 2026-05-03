# Claude Code All-In-One Best Practices Guide
## 📌 Introduction
This is the optimized Claude Code configuration curated for professional developers. Follow this guide to get the best performance, highest code quality and maximum productivity from Claude Code. All core rules are automatically applied if you sync from our repository.

## 🎯 Core Rules (Auto Active After Sync)
You don't need to configure these manually, they are already embedded in the global `CLAUDE.md` and will be followed automatically by Claude:
1. **Anthropic Official Coding Best Practices**: Default factory rules to reduce LLM coding mistakes, ensure simplicity, surgical changes and goal-driven execution.
2. **Andrej Karpathy's Official Claude Rules**: Personal usage rules from Andrej Karpathy, require accuracy first, concise responses, code-first output, priority use of knowledge graphs, structured concept explanations.
3. **Graphify Official Usage Rules**: Always use knowledge graph first for codebase understanding, reduce token usage by 70%+ and speed up responses.
4. **Superpowers Core Rules**: Follow industrial-grade development workflow: requirement confirmation before coding, strict TDD, task splitting, mandatory code review.

## 🔌 Recommended Must-Install Plugins
Install these plugins to unlock full functionality, one command per plugin:
### 1. Superpowers (Required)
**What it does**: Professional software development workflow suite, adds strict TDD, requirement auto-refinement, subagent parallel development, auto code review, autonomous work for hours without human intervention.
**Install command**:
```
/plugin install superpowers@claude-plugins-official
```
### 2. Graphify (Required)
**What it does**: Turns entire codebase, documents, papers, videos into structured knowledge graphs, makes Claude understand projects 10x faster, reduces token usage by 70%+.
**Install command**:
```
/skill install graphify
```
*(Note: If you used our sync script, graphify skill is already pre-configured, this command is optional)*
### 3. Terminal Plus (Optional, Recommended)
**What it does**: Enhanced terminal integration with long-running process monitoring, auto log parsing, background task notification.
**Install command**:
```
/plugin install terminal-plus@claude-plugins-official
```

## 🚀 Quick Setup Guide
### For new devices:
1. Clone our configuration repository:
```
git clone git@github.com:eriic828/claude-code-sync.git
cd claude-code-sync
```
2. Run sync script to apply all configurations and rules automatically:
```
./install.sh
```
3. Install the must-have plugins above in Claude Code.
4. Restart Claude Code, all configurations are active.

### To update to latest configuration:
```
cd claude-code-sync
git pull
./update.sh
```
All custom rules you added under the `公共规则结束` separator will be preserved automatically.

## 📚 Full Knowledge Base
All documentation is stored in the `claude-code-knowledge-base/` directory after sync:
- `Anthropic-Claude-Official-Coding-Best-Practices.md`: Complete official coding guidelines
- `Andrej-Karpathy-Claude-Official-Best-Practices.md`: Karpathy's rules + hidden pro tips
- `Graphify-Claude-Code-Official-Usage-Guide.md`: Full graphify usage tutorial
- `Superpowers-Claude-Code-Complete-Guide.md`: Superpowers detailed documentation
