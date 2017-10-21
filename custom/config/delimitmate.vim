" DelimitMate

" Don't auto-close <> in HTML files as this interferes with the auto-closing
" added by the XML plugin above.
au FileType html,eruby,eelixir let b:delimitMate_matchpairs = "(:),[:],{:}"

" Raimondi/delimitMate settings -----
" let delimitMate_expand_cr = 1

augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END
