" **************************************************
" Theme
"
" Controls the look and feel of vim
" **************************************************

let colorScheme = 'PaperColor'

" Set indent line color
let g:indentLine_color_term = 239

if colorScheme == 'jellybeans'
  set t_Co=256
  colorscheme jellybeans
  let g:jellybeans_use_lowcolor_black = 0
  hi TabLine ctermbg=234 ctermfg=238
  hi LineNr ctermfg=235
  hi LineNr ctermbg=236 ctermfg=FFF
  hi ColorColumn ctermbg=234
  hi CursorLine ctermbg=234
  hi CursorColumn ctermbg=234
  hi Folded guibg=#1C1C1C
  hi Folded guifg=#808080
  set cursorline!
  set cursorcolumn!

elseif colorScheme == 'hybrid'
  set t_Co=256
  let g:hybrid_use_Xresources = 1
  colorscheme hybrid
  set background=dark
  set number
  set laststatus=2
  " Warning line at 80 chars
  let &colorcolumn="80"
  hi LineNr ctermbg=234 ctermfg=darkgrey
  hi TabLine ctermbg=darkgrey ctermfg=234
  hi TabLineFill ctermbg=234 ctermfg=234
  hi TabLineSel ctermbg=darkgrey ctermfg=grey
  hi ColorColumn ctermbg=234
  hi CursorLine ctermbg=234
  hi CursorColumn ctermbg=234
  hi Folded guibg=#1C1C1C
  hi Folded guifg=#808080
  " Use blue instead of red for identifiers
  "hi Constant ctermfg=110
  set cursorline
  " set cursorcolumn!
  if &background == 'dark'
    hi CursorLine gui=NONE guibg=#1C1C1C
  else
    hi CursorLine gui=NONE guibg=#EEEEEE
  endif
  hi! link CursorColumn CursorLine

elseif colorScheme == 'PaperColor'
  set t_Co=256
  colorscheme PaperColor
  set background=dark
  set number
  set laststatus=2
  " Override the search hi color with a combination that is easier to
  " read. The default PaperColor is dark green backgroun with black foreground.
  " Reference:
  " - http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
  hi Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
  " Toggle background with <leader>bg
  map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>
  " Warning line at 80 chars
  " let &colorcolumn="80"
  " Use blue instead of red for identifiers
  " hi Constant ctermfg=110
  hi Folded guibg=#1C1C1C
  hi Folded guifg=#808080
  set cursorline
  " set cursorcolumn!
  if &background == 'dark'
    hi CursorLine gui=NONE guibg=#1C1C1C
  else
    hi CursorLine gui=NONE guibg=#EEEEEE
  endif
  hi! link CursorColumn CursorLine

elseif colorScheme == 'base16'
  colorscheme base16-default
  " Override Base16 theme and make gutter background color dark
  hi Normal ctermbg=NONE
  hi LineNr ctermbg=236 ctermfg=242
  hi SignColumn ctermbg=black ctermfg=white
  hi TabLine ctermbg=236 ctermfg=08
  hi TabLineFill ctermbg=235 ctermfg=white
  hi TabLineSel ctermbg=09 ctermfg=white
  " GitGutter overrides
  hi GitGutterAdd ctermbg=black
  hi GitGutterDelete ctermbg=black
  hi GitGutterChangeDelete ctermbg=black
  hi GitGutterChange ctermbg=black
  " Other overrides
  hi VertSplit ctermbg=238 ctermfg=238
  hi Search cterm=NONE ctermfg=blue ctermbg=red
  hi CursorLine ctermbg=236 ctermfg=grey
  hi Visual ctermbg=238
  hi Todo ctermbg=darkyellow ctermfg=black
  hi Pmenu ctermbg=238
  hi PmenuSel ctermbg=236
  " Warning line color
  hi ColorColumn ctermbg=235 guibg=#2c2d27
endif
