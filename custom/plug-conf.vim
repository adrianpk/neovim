" **************************************************
" Plugins Config
" **************************************************

" Don't eager load git gutter display
let g:gitgutter_eager = 0

" Set scratch file to markdown
let g:scratch_filetype = 'markdown'

" Use AG for control-p searching
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Enable vim-mustache-handlebars shortcuts
let g:mustache_abbreviations = 1

" XML Plugin
let g:xml_use_html = 1 " Don't auto-complete some tags

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>" " Don't use tab for compatibility with YouCompleteMe

" Syntastic
" source ~/.config/nvim/custom/config/syntastic.vim

" Ruby
source ~/.config/nvim/custom/config/ruby.vim

" Vim-Go
source ~/.config/nvim/custom/config/vim-go.vim

" Elixir
source ~/.config/nvim/custom/config/elixir.vim

" Elixir
source ~/.config/nvim/custom/config/elixir.vim

" Json
source ~/.config/nvim/custom/config/json.vim

" DelimitMate
source ~/.config/nvim/custom/config/delimitmate.vim

" Powerline
source ~/.config/nvim/custom/config/powerline.vim

" Supertab
source ~/.config/nvim/custom/config/supertab.vim

" More
source ~/.config/nvim/custom/config/_more.vim
