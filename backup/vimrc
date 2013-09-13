" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set backspace=indent,eol,start    " Intuitive backspacing.
set clipboard=unnamedplus         "alias unamed register to the + register, which is the X Window clipboard
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set expandtab                     " Use spaces instead of tabs
set hidden                        " Handle multiple buffers better.
set hlsearch                      " Highlight matches.
set ignorecase                    " Case-insensitive searching.
set incsearch                     " Highlight matches as you type.
set laststatus=2                  " Show the status line all the time
set nobackup                      " Don't make a backup before overwriting a file.
set nowrap                        " Turn off line wrapping.
set nowritebackup                 " And again.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set shiftwidth=2                  " And again, related.
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P " Useful status information at bottom of screen
set tabstop=2                     " Global tab width.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

" Or use vividchalk
colorscheme vividchalk 

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
map <Leader>t :FuzzyFinderTextMate<Enter>
map <Leader>tr :ruby finder.rescan!<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" Open NERDTree
map <leader>n :NERDTreeToggle<cr>

" For NERDTree to be able to show hidden files.
let NERDTreeShowHidden=1

" Close NERDTree after a file has been opened.
let NERDTreeQuitOnOpen=1

" We don't need no stinking whitespace
autocmd FileType coffee,css,cucumber,haml,ruby,sass,yaml autocmd BufWritePre <buffer> :%s/\s\+$//e
