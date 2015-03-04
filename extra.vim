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

nmap <C-m> :TagbarToggle<CR>

