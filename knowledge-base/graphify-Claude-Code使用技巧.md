# Graphify 专属 Claude Code 使用技巧
## 什么是 Graphify？
Graphify是专门为AI编程助手设计的知识图谱生成工具，它可以把你的代码库、文档、论文、视频音频等所有内容转换成结构化的知识图谱，让Claude Code理解项目的速度提升数倍，减少token消耗70%+，还能帮你发现代码间的隐藏关联和设计决策背后的原因。

---

## 一、Claude Code 专属安装步骤
### 1. 安装依赖
首先安装graphify包：
```bash
# 推荐用uv安装，自动配置PATH
uv tool install graphifyy && graphify install
# 或者用pipx
pipx install graphifyy && graphify install
```
### 2. 安装Claude Code专属集成
```bash
# 安装基础技能，让Claude Code支持/graphify命令
graphify install --platform claude
# （推荐）安装Always-On集成，Claude每次打开项目自动读取知识图谱
graphify claude install
```
安装后会自动完成两个配置：
- 在项目根目录生成`CLAUDE.md`，告诉Claude优先读取`graphify-out/GRAPH_REPORT.md`再回答架构问题
- 安装PreToolUse钩子，每次Claude要执行glob/grep搜索文件前，都会先看知识图谱，不用再逐个文件搜索

---

## 二、Claude Code 核心使用命令
在Claude Code的对话栏直接输入以下命令即可：
### 基础使用
```
# 扫描当前目录生成知识图谱
/graphify .
# 扫描指定目录
/graphify ./src
# 只更新变化的文件，增量更新图谱（速度快，无额外token消耗）
/graphify . --update
# 深度模式，提取更多隐含关联（适合首次分析大型项目）
/graphify . --mode deep
```
### 高级查询
```
# 直接查询图谱内容，不用读原始文件
/graphify query "展示用户认证的完整流程"
/graphify query "JWT模块和权限校验模块有什么关联"
# 查找两个节点之间的最短路径
/graphify path "UserController" "Database"
# 解释某个核心概念/类/函数的作用和关联
/graphify explain "AsyncTaskQueue"
```
### 实用功能
```
# 自动监听文件变化，实时更新图谱（代码变化自动更新，文档变化提醒手动更新）
/graphify . --watch
# 生成Obsidian知识库格式的图谱
/graphify . --obsidian
# 导出为可交互的HTML图谱，浏览器打开就能查看
/graphify . --no-viz  # 跳过HTML生成，只生成报告和JSON
```

---

## 三、Claude Code 最佳实践
### 1. 团队协作配置
- 把`graphify-out/`目录提交到Git，所有队友拉取后Claude自动获取项目知识图谱，不用每个人重新生成
- 推荐`.gitignore`配置：
  ```
  graphify-out/cache/
  graphify-out/manifest.json
  graphify-out/cost.json
  ```
- 安装git钩子，提交代码自动更新图谱：`graphify hook install`，无需手动执行更新
### 2. 提升效率技巧
- 首次分析大型项目时用`--mode deep`，之后每次只用`--update`增量更新，几乎无额外开销
- 对于架构类问题，优先用`/graphify query`查询，比让Claude读所有文件快10倍+，token消耗减少70%以上
- 处理跨模块问题时用`/graphify path`快速定位关联路径，不用逐个文件查调用关系
### 3. 优化使用体验
- 创建`.graphifyignore`文件，排除不需要扫描的内容：
  ```
  node_modules/
  vendor/
  dist/
  *.generated.py
  CLAUDE.md
  AGENTS.md
  ```
- 需要快速了解陌生项目时，先跑`/graphify .`，然后看自动生成的`GRAPH_REPORT.md`，1分钟就能掌握项目核心结构、核心节点和隐藏关联

---

## 四、常见问题解决
1. **提示`graphify: command not found`**：用`uv tool install graphifyy`或者`pipx install graphifyy`安装，会自动配置PATH
2. **Claude没有自动读取图谱**：检查是否执行了`graphify claude install`，确认项目根目录有`CLAUDE.md`文件
3. **图谱更新不及时**：执行`graphify update .`手动更新，或者安装`graphify hook install`让git提交自动更新
4. **扫描速度慢**：排除不需要的目录到`.graphifyignore`，首次扫描后用`--update`增量更新

---

## 五、价值总结
用Graphify配合Claude Code可以：
✅ 理解陌生项目速度提升10倍以上
✅ 回答架构类问题的准确率大幅提升，减少幻觉
✅ Token消耗减少70%+，尤其是大型项目效果更明显
✅ 自动发现代码间的隐藏关联和设计决策背后的原因
✅ 团队协作时所有人都共享同一份项目知识图谱，不用重复理解项目
