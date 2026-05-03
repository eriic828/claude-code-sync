#!/bin/bash
set -e
echo "🔄 开始同步最新Claude Code配置和技巧..."
# 更新全局配置
cp -r "$(dirname "$0")/global-config" "$HOME/.claude"
# 更新知识库
KB_DIR="$HOME/claude-code-knowledge-base"
mkdir -p "$KB_DIR"
cp -r "$(dirname "$0")/knowledge-base/"* "$KB_DIR/"
echo "✅ 更新完成！重启Claude Code即可生效最新内容。"