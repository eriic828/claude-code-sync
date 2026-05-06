# 🚀 GitNexus + Claude Code 完整使用指南
## 🔧 安装配置（已内置到知识库update.sh自动执行）
### 全局安装
```bash
npm install -g gitnexus
```
### 自动配置到所有MCP兼容编辑器（Claude Code/Cursor/Codex等）
```bash
gitnexus setup --yes
```
> 🔔 现在执行知识库的`./update.sh`会自动检测安装GitNexus，无需手动操作

## 📝 项目级索引（每个项目首次使用跑一次即可）
进入项目根目录执行，推荐用完整索引，功能最全：
| 索引模式 | 命令 | 功能说明 | 耗时 |
| --- | --- | --- | --- |
| 完整索引（最推荐） | `gitnexus analyze --embeddings --skills` | 代码结构+语义向量索引+自动生成模块级专属Skill | 中等 |
| 带语义搜索 | `gitnexus analyze --embeddings` | 代码结构+语义向量索引，支持自然语言搜代码 | 较快 |
| 基础索引（最快） | `gitnexus analyze` | 仅代码结构索引，零Token，无语义搜索 | 最快 |

### 验证索引结果
```bash
# 查看当前项目索引状态
gitnexus status
# 查看所有已索引的项目列表
gitnexus list
```

## ✨ 核心使用场景（Claude Code自动调用，无需手动操作）
1. **改动影响范围分析**：问Claude"修改这个函数会影响哪些代码"，自动返回具体影响的文件+行号
2. **PR自动风险评审**：粘贴PR链接，自动评估改动风险等级、列出所有受影响范围
3. **Issue自动诊断**：粘贴Issue链接，自动返回根因定位+多条修复路线
4. **项目架构分析**：问"分析这个项目的整体架构"，自动返回结构化的模块关系
5. **跨文件协调重命名**：全局重命名变量/函数自动同步所有调用点，不会漏改
6. **自然语言代码搜索**：问"找用户权限校验相关的代码"，自动匹配语义相关的代码片段

## 🔄 日常维护
```bash
# 代码改动后增量更新索引（自动识别变更文件，不需要全量重跑）
gitnexus analyze
# 强制全量重建索引（升级GitNexus版本/索引损坏时用）
gitnexus analyze --force
# 清理当前项目索引
gitnexus clean
# 清理所有已索引项目
gitnexus clean --all --force
# 自动生成项目Wiki（唯一需要消耗Token的功能）
gitnexus wiki
# 启动本地可视化图谱服务（访问https://gitnexus.vercel.app即可浏览）
gitnexus serve
```

## 🎯 效果对比
| 能力项 | 原生Claude Code | 搭配GitNexus |
| --- | --- | --- |
| 影响分析准确率 | 60%左右，经常漏调用点 | 95%+，精确到行号 |
| 大项目代码理解能力 | 容易上下文溢出，幻觉多 | 基于图谱结构理解，零幻觉 |
| PR评审覆盖度 | 只能看到diff内容，不知道全局影响 | 全链路分析改动影响范围 |
| 重构可靠性 | 容易漏改隐藏依赖 | 自动识别所有关联依赖 |

## ❓ 常见问题
1. **索引完Claude Code不生效**：完全重启Claude Code即可，MCP服务仅启动时加载
2. **索引速度慢**：大项目加`--verbose`参数看进度，语义索引会根据CPU核心数自动并行，性能越好越快
3. **不想每次手动更新索引**：可以把`gitnexus analyze`加到git的post-commit钩子，提交代码后自动增量更新
