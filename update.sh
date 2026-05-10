#!/bin/bash
set -e
echo "🔄 开始同步最新Claude Code配置和技巧..."
# 检测并自动安装GitNexus代码图谱工具
if ! command -v gitnexus &> /dev/null; then
    echo "📦 未检测到GitNexus，正在自动安装..."
    npm install -g gitnexus --registry=https://registry.npmmirror.com > /dev/null 2>&1 || echo "⚠️ npm安装失败，请手动执行：npm install -g gitnexus"
    if command -v gitnexus &> /dev/null; then
        echo "🔧 自动配置GitNexus到所有MCP兼容编辑器..."
        gitnexus setup --yes > /dev/null 2>&1
        echo "✅ GitNexus安装配置完成"
    fi
fi
# 0. 自动备份当前本地CLAUDE.md，万无一失
BACKUP_DIR="$HOME/.claude/backup"
mkdir -p "$BACKUP_DIR"
BACKUP_FILE="$BACKUP_DIR/CLAUDE.md.backup.$(date +%Y%m%d%H%M%S)"
cp "$HOME/.claude/CLAUDE.md" "$BACKUP_FILE"
echo "💾 已备份当前本地CLAUDE.md到: $BACKUP_FILE"

# 1. 同步除了CLAUDE.md之外的所有全局配置（技能、插件、设置等直接覆盖更新）
rsync -av --exclude="CLAUDE.md" "$(dirname "$0")/global-config/" "$HOME/.claude/" > /dev/null 2>&1 || (
  # 兼容没有rsync的情况用cp
  cp -r "$(dirname "$0")/global-config/"* "$HOME/.claude/"
  rm -f "$HOME/.claude/CLAUDE.md"
)

# 2. 智能合并CLAUDE.md：公共规则更新 + 完全保留本地自定义规则
SEPARATOR="### ===== 公共规则结束，下方是您的自定义规则（不会被同步覆盖）====="
# 仓库里的最新公共规则
REMOTE_CLAUDE="$(cat "$(dirname "$0")/global-config/CLAUDE.md")"
# 抽离用户本地的自定义规则（分隔符之后的内容）
LOCAL_CUSTOM=""
if grep -qF "$SEPARATOR" "$HOME/.claude/CLAUDE.md" 2>/dev/null; then
  LOCAL_CUSTOM="$(awk -v sep="$SEPARATOR" 'f; $0 == sep {f=1}' "$HOME/.claude/CLAUDE.md" 2>/dev/null)"
fi

# 合并写入新的CLAUDE.md
cat > "$HOME/.claude/CLAUDE.md" << EOF
$REMOTE_CLAUDE

$SEPARATOR
$LOCAL_CUSTOM
EOF
echo "✅ CLAUDE.md合并完成：已更新公共规则，完全保留本地自定义内容"

# 3. 同步最新知识库
KB_DIR="$HOME/claude-code-knowledge-base"
mkdir -p "$KB_DIR"
cp -r "$(dirname "$0")/knowledge-base/"* "$KB_DIR/"
echo "✅ 知识库同步完成"

# 同步最新Claude Code官方最佳实践
echo "🔄 同步最新Claude Code官方最佳实践内容..."
BEST_PRACTICE_DIR="$KB_DIR/best-practices-official"
mkdir -p "$BEST_PRACTICE_DIR"
cd /tmp && rm -rf claude-code-best-practice
git clone --depth 1 https://github.com/shanraisshan/claude-code-best-practice.git > /dev/null 2>&1
rm -rf claude-code-best-practice/.git
cp -rf claude-code-best-practice/* "$BEST_PRACTICE_DIR/"
echo "✅ Claude Code官方最佳实践同步完成"

echo -e "\n🎉 全部更新完成！重启Claude Code即可生效最新内容~"
echo "💡 提示：您的私人自定义规则请写在CLAUDE.md末尾的分隔符下方，永远不会被同步覆盖哦"