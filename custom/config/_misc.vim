" Misc

" Enable fenced code block highlighting
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['bash=sh', 'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'elixir']

" Tabular table formatting
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Ignore files for Control-p fuzzy search
set wildignore+=*/vcr_cassettes/*,*/public/assets/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip

" Autofold comments
" set fdm=syntax fen
augroup closeCommentFolds
   au!
   au FileType javascript %foldo | g/^\/\*/foldc
   au FileType ruby %foldo | g/^=begin/foldc
   au FileType c setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*//'
   au FileType go setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*//'
   au FileType python setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*#'
augroup end
