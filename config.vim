syntax enable                     " Turn on syntax highlighting.

filetype on                       " Turn on filetype detection.

set autoread                      " Automatically reload changes if detected

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif


nmap <leader>p :call PasteToggle()<CR>
nmap <leader>r :call NumberToggle()<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>v :edit $MYVIMRC<CR>

set backspace=indent,eol,start    " Intuitive backspacing.
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\
" %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\
" %l,%c-%v\ %)%P

set nowrap                        " Turn off line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" Strip trailing whitespace on save for all of the listed file types.
autocmd FileType c,cpp,java,php,ruby,sass,yaml autocmd BufWritePre <buffer> :%s/\s\+$//e
