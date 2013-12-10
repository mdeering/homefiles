syntax enable                     " Turn on syntax highlighting.

filetype on                       " Turn on filetype detection.

set autoread                      " Automatically reload changes if detected

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" My custom leaders
"
" Insert a line of whitespace below the current and remain in normal mode
nmap <leader>o o<ESC>k
" Insert a line of whitespace above the current and remain in normal mode
nmap <leader>O O<ESC>j

nmap <leader>p :call PasteToggle()<CR>
nmap <leader>r :call NumberToggle()<CR>
nmap <leader>s :set spell!<CR>

" Swap the last to characters
imap <leader>t <ESC>xpla
nmap <leader>t xPl

nmap <leader>v :edit $MYVIMRC<CR>

set backspace=indent,eol,start    " Intuitive backspacing.
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set laststatus=2                  " Show the status line all the time

" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(%l,%c-%v\ %)%P

set nowrap                        " Turn off line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" don't use backup files
set nobackup
set noswapfile
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp   " store swap files here

" Auto read when a file is changed on disk
set autoread

" Strip trailing whitespace on save for all of the listed file types.
autocmd FileType c,cpp,eruby,java,php,ruby,sass,yaml autocmd BufWritePre <buffer> :%s/\s\+$//e

" remove trailing whitespace
noremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
