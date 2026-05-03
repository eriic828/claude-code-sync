# Claude Code 跨设备同步包使用说明
## 🎯 能力
新安装的Claude Code执行一键安装后，直接拥有：
✅ 所有咱们已经安装的技能（graphify等），直接可以用`/graphify`命令
✅ 所有咱们总结的Claude Code使用技巧、最佳实践，Claude默认就会遵守，不用重新学习
✅ 和咱们现在用的完全一样的Claude配置、全局规则
✅ 完整的知识库，可以随时查询和新增内容
## 🚀 新电脑安装步骤
### 方式一：Git同步（推荐，方便以后更新）
```bash
# 克隆同步仓库（你可以把这个目录推到你自己的私有Git仓库）
git clone <你的仓库地址> claude-code-sync
cd claude-code-sync
# 执行一键安装
./install.sh
```
### 方式二：直接拷贝目录
把整个`claude-code-sync`目录拷贝到新电脑，然后执行`./install.sh`即可
## 🔄 更新同步最新内容
以后咱们新增了技巧、安装了新技能，只要更新同步仓库的内容，所有电脑执行：
```bash
cd claude-code-sync
git pull # 如果用Git的话
./update.sh
```
重启Claude Code就完成同步了
## 📝 添加新技巧
直接在`knowledge-base`目录里添加新的Markdown文档，然后提交到仓库，所有设备更新后Claude会自动学习新内容
## 📂 目录结构
```
claude-code-sync/
├── install.sh          # 一键安装脚本
├── update.sh           # 一键更新脚本
├── global-config/      # Claude全局配置，包含所有已安装的技能和规则
└── knowledge-base/     # 所有Claude Code使用技巧、最佳实践知识库
```
