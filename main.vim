set cul "高亮光标所在行
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
syntax on
colorscheme desert     " 设置背景主题  
set guifont=Consolas:h10:cANSI   " 设置字体  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
" set noexpandtab
" 在行和段开始处使用制表符
" set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set nocp
set backspace=indent,eol,start

