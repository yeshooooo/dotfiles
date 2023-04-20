" 查看vimrc应该存放在哪里
" :h[elp] vimrc

" 热重载配置文件
" :source %
set number

" 启用nocompatible,否则许多VIM的特性将被禁止
set nocompatible

" 取消切换buffer时的保存提示
set hidden

" 将:grep 替换为ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow



""""""""""""""""""""""""""""""""""""""""""" 键盘映射 
" fzf 
" https://github.com/junegunn/fzf.vim#commands
" fzf的:Files查找文件命令----> ctrl + f
nnoremap <slient> <C-f> :Files<CR>
" 在文件内部搜索, :Rg
nnoremap <slient> <Leader>f :Rg<CR>
" 其他搜索
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>




" 使用vim-plug插件管理器

call plug#begin()

" fzf
"""""""""""" 查找短语 
" https://github.com/wsdjeg/Learn-Vim_zh_cn/blob/master/ch03_searching_files.md
" ^ : 前缀精确匹配
" $ : 后缀精确匹配
" ' " 精确匹配
" | : 或者
" ! : 反向匹配
""""""""""" 查找文件
" :Files 
""""""""""" 在文件内部搜索
" :Rg
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 

call plug#end()
