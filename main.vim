set cul "高亮光标所在行
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
syntax on

if has('gui_running')
    set guioptions-=T
    set t_Co=256
	"set guifont=Consolas\ 10   " 设置字体  
	set guifont=Anonymice\ Powerline\ 11   " 设置字体  
	colorscheme candycode     " 设置背景主题  
else
    set t_Co=256
	"set guifont=Consolas:h10:cANSI   " 设置字体  
	set guifont=Anonymice\ Powerline\ 11   " 设置字体  
	colorscheme molokai " 设置背景主题  
endif

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

try
    lang=zh_CN
catch
endtry

" 自动缩进
set autoindent
set cindent
" 设置Tab键 
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 用空格代替制表符
set expandtab
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

" 使用Ctrl加方向键切换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Tab 配置
map tn :tabnew %<cr>
map te :tabedit 
map tc :tabclose<cr>
map tm :tabmove 


" 将Ctrl+d映射为Golang自动补全
imap <C-d> <C-x><C-o>

" 将F4映射为BASH
map <F4> :!bash<CR>
imap <F4> <ESC>:!bash<CR>

" 将Ctrl+k映射为保存
" map <C-k> :w!<CR>
" imap <C-k> <ESC>:w!<CR>

" 设置leader键
let mapleader=","

" leader键配置示例
" 按,ev打开配置文件
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" 按,sv重载配置文件
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" 按,m取消高亮搜索结果
nmap <silent> <leader>m :nohlsearch<CR>
" 按,w保存文件
nmap <leader>w :w<CR>
" 按,e在新tab打开文件
nmap <leader>e :tabe<Space>
" 按,r在当前tab打开文件
nmap <leader>r :e<Space>
" 按,p用python执行当前文件
nmap <leader>p :!python %<CR>
" 按,ip打开ipython
nmap <leader>ip :!ipython<CR>

" vim-go的快捷键的配置
" 按,gd打开光标下字符串的godoc
au FileType go nmap <Leader>gd <Plug>(go-doc)
" 按,gv打开光标下字符串的godoc，垂直窗口
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
" 按,fm使用gofmt格式化当前buffer
nmap <leader>fm :Fmt<CR>

