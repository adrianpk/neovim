"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
nnoremap <C-n> :NERDTreeToggle<CR>
inoremap <C-n> :NERDTreeToggle<CR>
vnoremap <C-n> :NERDTreeToggle<CR>

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$'
\]

" Close vim if NERDTree is the only opened window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show on startup
let g:nerdtree_tabs_open_on_console_startup = 1 " Always show nerdtree on start

" Show hidden files by default
let NERDTreeShowHidden = 1

" Default width
let g:NERDTreeWinSize=25

" Close if nerdtree is last open buffer
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END
