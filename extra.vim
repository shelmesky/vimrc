" Fast saving
nmap <leader>w :w!<cr>

set shell=/bin/bash


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
nmap <leader>shell :!bash<CR>

" add markdown support
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
