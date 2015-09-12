nmap <leader>w :w!<cr>

set shell=/bin/zsh


" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" Configuration for NERDTree
" in nerdtree buffer, select directory
" then user command [:Bookmark NAME] to add bookmark
let NERDChristmasTree=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="left"
let NERDTreeShowBookmarks=1
let NERDTreeBookmarksFile="/Users/roy/.vim/.NERDTreeBookmarks"

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle ~/coding<CR>

" 当vim启动时没有打开文件，则启动NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open bash shell
nmap <leader>shell :!zsh<CR>

" add markdown support
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" configuration for vim-powerline
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_colorscheme = 'solarized256'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" vim tagbar对go的支持
" 需要安装github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" 在go文件的buffer中，使用Ctrl-m打开右侧的tagbar
nmap <C-m> :TagbarToggle<CR>
nmap <leader>tn :tnext<CR>

" godef的配置，在光标处代码按gd键跳转
" 在当前窗口跳转
" let g:godef_split=0
" 打开tab跳转
"let g:godef_split=2
" 打开垂直窗口跳转
let g:godef_split=2

" 按,tl打开taglist
nmap <leader>tl  :TlistToggle<CR>
" 设置taglist窗口自动关闭
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth = 30
