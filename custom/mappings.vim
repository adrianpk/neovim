" **************************************************
" Key Mappings
" **************************************************

" Remap the Leader key
let mapleader = "<Space>"

" Disable arrow keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Press "jj" to leave insert mode
ino jj <esc>
ino jj <c-c>

" Open files with leader-o
nnoremap <Leader>o :CtrlP<CR>

" Save files in Insert mode
inoremap <F2> <c-o>:w<cr>

" Buffers
nnoremap <C-a> :buffers<CR>:buffer<Space>

" Map save commands to leader-<command>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <C-s> <C-o><Esc>:Update<CR>

" Improve tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Improve splitting
nnoremap vv  :vsplit<CR>
nnoremap ss  :split<CR>

" Improve pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fix j/k in wrap mode
nnoremap j gj
nnoremap k gk

" Automatically reselect block on indent/outdent
vnoremap < <gv
vnoremap > >gv

" Tabs
" noremap <leader>1 1gt
" noremap <leader>2 2gt
" noremap <leader>3 3gt
" noremap <leader>4 4gt
" noremap <leader>5 5gt
" noremap <leader>6 6gt
" noremap <leader>7 7gt
" noremap <leader>8 8gt
" noremap <leader>9 9gt
" noremap <leader>0 :tablast<cr>

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" Avoid word boundaries
" let g:multi_cursor_start_key='<C-n>'
" let g:multi_cursor_start_word_key='g<C-n>'

" Insert timestamp
:nnoremap <F5> "=strftime("%Y%m%d%H%M%S")<CR>P
:inoremap <F5> <C-R>=strftime("%Y%m%d%H%M%S")<CR>
" Insert year, month, date
:nnoremap <S-F5> "=strftime("%Y%m%d")<CR>P
:inoremap <S-F5> <C-R>=strftime("%Y%m%d")<CR>

" Pathogen
" source ~/.vim/config/pathogen.vim

" NerdTree
source ~/.vim/config/nerdtree.vim

" Look up in Dash
map <silent> <leader>d <Plug>DashSearch

" Mix
source ~/.vim/config/mix.vim

" Vim explorer
map <F4> :!ls<CR>:e

" Multiple Cursors
source ~/.vim/config/multicursor.vim

" VRoom
source ~/.vim/config/vroom.vim
