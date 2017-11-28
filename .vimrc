set nobackup
set nowritebackup
set noswapfile
set lines=40
set columns=80
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set showmatch
set incsearch

" Vundle setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
bundle 'gmarik/vundle'
" PLACE ADDONS HERE "
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Raimondi/delimitMate'
Bundle 'bash-support.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'SuperTab'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rodjek/vim-puppet'
Bundle 'honza/vim-snippets'
Bundle 'vim-coffee-script'
Bundle 'davidhalter/jedi-vim'
Bundle 'Indent-Guides' 
Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on     " required!

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:vim_markdown_folding_disabled=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set pastetoggle=<F2>
syntax on
