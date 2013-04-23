" ===========================================
" Who: Michael Deering (@mdeering)
" ===========================================

set nocompatible " Must come first because it changes other options.

" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Platform (Windows, Mac, etc.) configuration.
"source ~/.vim/platforms.vim

" All of the Vim configuration.
source ~/.vim/config.vim

" All hotkeys, not depedant on plugins, are bound here.
"source ~/.vim/bindings.vim

" Plugin-specific configuration.
source ~/.vim/plugin_config.vim

" Small custom functions.
"source ~/.vim/functions.vim

" Auto commands.
"source ~/.vim/autocmds.vim
