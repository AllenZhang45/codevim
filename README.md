# codevim
基于vim script配置一个类似简易vsocde的vim

## 目录结构
```
CodeVim/
│── init.vim              # 主入口，加载全部模块
│── README.md             # 项目说明文档
│── autoload/             # 自动加载脚本（Vim 函数库等）
│
├── core/                 # 核心配置（基础行为）
│   ├── options.vim       # 基础编辑器选项
│   ├── keymaps.vim       # 主键位绑定
│   ├── autocmds.vim      # 自动命令
│   ├── environment.vim   # 环境检查和适配
│
├── ui/                   # 视觉界面
│   ├── statusline.vim    # 状态栏
│   ├── colors.vim        # 颜色主题 / 高亮
│   ├── gui.vim           # GUI 调整
│   └── fonts.vim         # 字体及外观配置
│
├── plugins/              # 插件配置
│   ├── init.vim          # 插件管理器
│   ├── lsp.vim           # LSP 配置
│   ├── treesitter.vim    # Treesitter
│   ├── git.vim           # Git 系列
│   ├── completion.vim    # 代码补全插件配置
│   ├── lint.vim          # 代码检查，Lint插件配置
│   ├── debug.vim         # 调试相关插件配置
│   └── ...（未来可扩展）
│
├── modules/              # 杂项逻辑
│   ├── workspace.vim     # 工作区管理
│   └── editor.vim        # 光标、窗口、行号等 UI 行为
│
└── local/                # 用户自定义设置
    ├── custom.vim        # 本地自定义选项（用户偏好）
    └── project.vim       # 项目特定配置
```