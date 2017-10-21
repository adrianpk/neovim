"--------------i--------------------------------
" Plugin management
"
" Download vim-plug from the URL below and follow the installation
" instructions:
" https://github.com/junegunn/vim-plug
"----------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive

" General plugins
Plug 'airblade/vim-gitgutter'
Plug 'antoyo/vim-licenses'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'frigoeu/psc-ide-vim'
Plug 'gfontenot/vim-xcode'
Plug 'gioele/vim-autoswap'
Plug 'godlygeek/tabular'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown'
Plug 'raichoo/purescript-vim'
Plug 'Raimondi/delimitMate'
Plug 'rbgrouleff/bclose.vim'
Plug 'reedes/vim-pencil'
Plug 'rking/ag.vim'
Plug 'schickling/vim-bufonly'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sebdah/vim-delve'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
Plug 'Shougo/neosnippet'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'twitvim/twitvim'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'Yggdroot/indentLine'
"Plug 'BjRo/vim-extest'
"Plug 'Frost/vim-eh-docs'
"Plug 'mattn/emmet-vim'
"Plug 'mattn/gist-vim'
"Plug 'mattn/webapi-vim' " Required by gist-vim
"Plug 'mattreduce/vim-mix'
"Plug 'mtth/scratch.vim'
"Plug 'Lokaltog/vim-powerline'
"Plug 'rizzatti/dash.vim' " Lookup terms in dash

" Language support
Plug 'aklt/plantuml-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'dag/vim-fish'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'fatih/vim-go'
Plug 'fishbullet/deoplete-ruby'
Plug 'JulesWang/css.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kylef/apiblueprint.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'othree/xml.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'slashmili/alchemist.vim'
Plug 'slim-template/vim-slim'
Plug 'tclh123/vim-thrift'
Plug 'toyamarinyon/vim-swift'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
"Plug 'lambdatoast/elm.git'
"Plug 'scrooloose/syntastic'

" Colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'w0ng/vim-hybrid'

call plug#end()
