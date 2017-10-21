" Ruby

" xmpfilter for inline Ruby annotation
autocmd FileType ruby nmap <buffer> µ <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> µ <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> µ <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> ® <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> ® <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> ® <Plug>(xmpfilter-run)

" Autocompletion for Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
