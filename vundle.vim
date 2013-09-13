" ----------------------------------------
" Vundle
" ----------------------------------------
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" CoffeeScript support for vim
Bundle 'kchmck/vim-coffee-script'

" one colorscheme pack to rule them all!
Bundle 'flazz/vim-colorschemes'

" Fuzzy file, buffer, mru, tag, etc finder.
Bundle 'kien/ctrlp.vim'

" Vim motions on speed!
Bundle 'Lokaltog/vim-easymotion'

" a Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'

" Vim-script library
Bundle 'L9'

" A tree explorer plugin for vim
Bundle 'scrooloose/nerdtree'

" The ultimate statusline/prompt utility.
Bundle 'Lokaltog/powerline'

" Ruby on Rails power tools
Bundle 'tpope/vim-rails'

" aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
" 
" snipmate dependancies first.
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'

" quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" Vim script for text filtering and alignment
Bundle 'godlygeek/tabular'

" An extensible & universal comment plugin that also handles embedded filetypes
Bundle 'tComment'
