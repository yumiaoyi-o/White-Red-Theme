# White & Red Theme

基于白色/浅灰背景、红色点缀的统一主题，适用于多个平台。

## 色表

### 主色调

| 颜色 | HEX | 用途 |
|------|-----|------|
| 主红 | `#AF2F28` | 强调色、关键字、函数、边框 |
| 中血红 | `#8A2922` | 类型、类名 |
| 中深血红 | `#6B221C` | 数字、字符串、路径 |
| 深血红 | `#4D1B16` | 变量、运算符 |
| 很深血红 | `#3A1512` | 关键字（深色版） |

### 灰色系

| 颜色 | HEX | 用途 |
|------|-----|------|
| 纯黑 | `#1C1C1C` | 主文字 |
| 深灰 | `#303030` | 次要文字 |
| 中灰 | `#474747` | 字符串 |
| 灰 | `#5E5E5E` | 变量、属性 |
| 浅灰 | `#777777` | 注释、运算符 |
| 边框灰 | `#DADADA` | 边框、分隔线 |
| 浅背景 | `#E8E8E8` | 选中高亮 |
| 主背景 | `#F4F4F4` | 编辑器背景 |
| 纯白 | `#FAFAFA` | 面板背景 |

### 特殊色

| 颜色 | HEX | 用途 |
|------|-----|------|
| 选中背景 | `#F1E5E4` | 选中文字背景（淡粉红） |

---

## 各组件使用方法

### VS Code

**文件位置**: `vscode/`

1. 安装 `.vsix` 扩展包：
   ```bash
   code --install-extension vscode/white-red-theme-1.0.4.vsix
   ```

2. 或手动复制主题文件：
   ```bash
   cp -r vscode ~/.vscode/extensions/yumiaoyi-o.white-red-theme-1.0.4
   ```

3. 打开 VS Code → `Ctrl+K Ctrl+T` → 选择 "White & Red Theme"

4. （可选）使用推荐设置：
   ```bash
   cp vscode/settings.json ~/.config/Code/User/settings.json
   ```

---

### Kitty Terminal

**文件**: `kitty/kitty.conf`

```bash
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
```

重启 Kitty 或按 `Ctrl+Shift+F5` 重载配置。

---

### Bash Prompt

**文件**: `bash/.bashrc`

```bash
cp bash/.bashrc ~/.bashrc
source ~/.bashrc
```

提示符颜色：
- `[` `]` `@` `$` = 主红 `#AF2F28`
- 用户名 = 中深血红 `#6B221C`
- 主机名 = 灰黑色 `#303030`
- 路径 = 中深血红 `#6B221C`

---

### Fcitx5 输入法

**文件**: `fcitx5/theme.conf`

```bash
mkdir -p ~/.local/share/fcitx5/themes/white-red
cp fcitx5/theme.conf ~/.local/share/fcitx5/themes/white-red/theme.conf
```

然后在 Fcitx5 配置中选择 "white-red" 主题，或：
```bash
fcitx5-configtool
```
→ 附加组件 → 经典用户界面 → 主题 → white-red

重启 Fcitx5：
```bash
fcitx5 -r
```

---

### Fastfetch

**文件**: `fastfetch/config.jsonc`, `fastfetch/logo-arch-full-gradient.txt`

```bash
mkdir -p ~/.config/fastfetch
cp fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
cp fastfetch/logo-arch-full-gradient.txt ~/.config/fastfetch/
```

运行 `fastfetch` 查看效果。

**生成新 Logo**：
```bash
cd fastfetch
python3 gen_logo.py
```

---

### Hyprland

**文件**: `hypr/` 目录

```bash
cp -r hypr/* ~/.config/hypr/
```

主要配色文件：`hypr/look_and_feel.conf`

重新加载 Hyprland 配置：
```bash
hyprctl reload
```

---

### Vim

**文件**: `vim/whitered.vim`, `vim/.vimrc`

```bash
mkdir -p ~/.vim/colors
cp vim/whitered.vim ~/.vim/colors/
cp vim/.vimrc ~/.vimrc
```

或在 `.vimrc` 中添加：
```vim
syntax on
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=light
colorscheme whitered
```

---

### Chrome

**文件**: `chrome/`

1. 打开 Chrome → `chrome://extensions/`
2. 开启"开发者模式"
3. 点击"加载已解压的扩展程序"
4. 选择 `chrome/` 目录

或者使用 `Cached Theme.pak` 替换 Chrome 主题缓存（高级用法）。

---

## 文件结构

```
white-red-theme/
├── README.md           # 本文件
├── bash/
│   └── .bashrc         # Bash 配置
├── chrome/
│   ├── manifest.json   # Chrome 主题
│   └── Cached Theme.pak
├── fastfetch/
│   ├── config.jsonc    # Fastfetch 配置
│   ├── gen_logo.py     # Logo 生成脚本
│   └── logo-arch-full-gradient.txt
├── fcitx5/
│   └── theme.conf      # Fcitx5 主题
├── hypr/
│   ├── hyprland.conf   # 主配置
│   ├── look_and_feel.conf  # 外观配置
│   └── ...
├── kitty/
│   └── kitty.conf      # Kitty 配置
├── vim/
│   ├── whitered.vim    # Vim 配色
│   └── .vimrc          # Vim 配置
└── vscode/
    ├── package.json
    ├── themes/white-red-color-theme.json
    ├── settings.json   # 推荐设置
    └── white-red-theme-1.0.4.vsix
```

---

## 作者

yumiaoyi-o

## License

MIT
