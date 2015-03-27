" ----------------------
" Plugin Configurations
" ----------------------

" ---------------
" Colorscheme
" ---------------
colorscheme nightwish

" ---------------
" Fugitive
" ---------------
nmap <Leader>gc :Gcommit -v<CR>
"nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
"nmap <Leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2     " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
let g:NERDTreeQuitOnOpen=1      " Close NERDTree after a file has been opened.
let g:NERDTreeShowHidden=1    " Show hidden files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>
