#!/bin/bash
set -e
echo "🚀 开始安装 Claude Code 同步环境..."
# 检查uv是否安装
if ! command -v uv &> /dev/null; then
    echo "📦 安装 uv 包管理器..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    source $HOME/.cargo/env
fi
# 安装graphify
echo "📦 安装 graphify 技能..."
uv tool install graphifyy --force
graphify install --platform claude
# 备份原有配置
if [ -d "$HOME/.claude" ]; then
    BACKUP_DIR="$HOME/.claude.backup.$(date +%Y%m%d%H%M%S)"
    echo "💾 备份原有Claude配置到 $BACKUP_DIR"
    mv "$HOME/.claude" "$BACKUP_DIR"
fi
# 复制全局配置
echo "⚙️  同步Claude全局配置、已安装技能..."
cp -r "$(dirname "$0")/global-config" "$HOME/.claude"
# 复制知识库
KB_DIR="$HOME/claude-code-knowledge-base"
echo "📚 同步Claude Code使用技巧知识库到 $KB_DIR"
mkdir -p "$KB_DIR"
cp -r "$(dirname "$0")/knowledge-base/"* "$KB_DIR/"
# 写入全局规则，让Claude默认读取所有技巧
echo "📝 配置Claude全局规则..."
echo "
---
# 全局使用技巧
你必须优先学习并遵守以下所有Claude Code使用技巧，所有操作都要按照最佳实践执行：
1. 优先使用/graphify生成和查询知识图谱，减少token消耗，提升理解项目速度
2. 所有编程操作遵守咱们总结的最佳实践，避免常见错误
3. 知识库路径：$KB_DIR，遇到问题优先查询知识库内容
" >> "$HOME/.claude/CLAUDE.md"
echo "✅ 安装完成！"
echo ""
echo "📖 使用说明："
echo "1. 重启Claude Code即可生效，所有已安装技能（graphify等）直接可用"
echo "2. 所有咱们总结的使用技巧Claude已经自动学习，会自动遵守"
echo "3. 知识库位置：$KB_DIR，可以随时查看和添加新的技巧"
echo "4. 以后要更新同步最新内容，直接执行 ./update.sh 即可"