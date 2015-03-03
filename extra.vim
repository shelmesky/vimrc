" Fast saving
nmap <leader>w :w!<cr>

set shell=/bin/bash


" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

let NERDChristmasTree=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle ~/coding<CR>

" open bash shell
nmap <leader>shell :!bash<CR>
