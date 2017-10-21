command! Del :call delete(expand('%')) | bdelete!

" Buffer delete
command Bd bp | sp | bn | bd
