" Fast saving
nmap <leader>w :w!<cr>

set shell=/bin/bash


" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" NERDTree
autocmd vimenter * NERDTree

" map <C-n> :NERDTreeToggle<CR>
