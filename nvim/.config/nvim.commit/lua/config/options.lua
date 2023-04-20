
-- vim.g.{name}: 全局变量
-- vim.b.{name}: 缓冲区变量
-- vim.w.{name}: 窗口变量
-- vim.bo.{option}: buffer-local选项
-- vim.wo.{option}: window-local选项
-- 他们都可以统一用vim.opt替代
--
--
--

-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- tex文件的设置
vim.g.tex_flavor = "latex"

local opt = vim.opt
-- utf8
opt.encoding = "UTF-8"
opt.fileencoding = "utf-8"

-- jkhl 移动时光标周围保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 使用相对行号
--opt.numberwidth = 6
opt.number = true
opt.relativenumber = true

-- 高亮所在行
opt.cursorline = true

-- 显示左侧图标指示列
opt.signcolumn = "yes"

-- 右侧参考线,超过表示代码太长了,考虑换行
--opt.colorcolumn = "80"

-- 缩进2个空格等于一个tab
--opt.tabstop = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftround = true

-- >> << 的时候,移动长度
opt.shiftwidth = 2
opt.shiftwidth = 2

-- 空格替代tab
--opt.expandtab = true
opt.expandtab = true

-- 新行对齐当前行
opt.autoindent = true
--opt.autoindent = true
opt.smartindent = true

-- 搜索大小写不敏感,除非包含大写,意思就是小写时候都能搜索到,大写只能搜大写
opt.ignorecase = true
opt.smartcase = true

-- 搜索不要高亮
opt.hlsearch = false

-- 边输入边搜索
opt.incsearch = true

-- 命令行高为2,提供足够的显示空间
opt.cmdheight = 2

-- 当文件被外部程序修改时,自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 折行
-- 同一行显示不过来的时候是否在视觉上让他们看起来折行了
vim.wo.wrap = true

-- 光标在行首尾时<Left><Right>可以跳转到下一行
vim.o.whichwrap = "<,>,[,]"

-- 允许隐藏被修改过的buffer
-- 不设置为true的话,多个buffer会报错，让你强制保存当前buffer才允许切换到其他buffer
vim.o.hidden = true

-- 开启鼠标操作
vim.o.mouse = "a"

-- 禁止创建备份文件
-- 可以防止未保存退出等情况下保存swap缓存文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime

-- 允许隐藏被修改过的buffer
vim.o.hidden = true

-- 开启鼠标操作
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- 连击时间
-- 时间间隔单位是毫秒
vim.o.timeoutlen = 1000

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 不可见字符的显示,如空格显示为.
vim.o.list = true
vim.o.listchars = "space:."

-- 补全增强
vim.o.wildmenu = true

-- Don't pass message to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'

-- 补全最多显示10行
vim.o.pumheight = 10

-- 永远显示 tabline
-- 固定设置，表示永远关闭tabline,后面使用tabline插件
vim.o.showtabline = 2


-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false

-- 开启与系统剪切板同步
vim.opt.clipboard = "unnamedplus"

-- 当未保存退出时，询问是否保存
opt.confirm = true

-- 拼写检查
-- opt.spell = true
-- cjk是汉语相关
-- opt.spelllang = { "en", "cjk"}
-- 开启驼峰检查
-- opt.spelloptions = "camel"
