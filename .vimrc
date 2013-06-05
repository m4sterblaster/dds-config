set laststatus=2
set number

set hlsearch
set incsearch
set ignorecase
set smartcase

set tabstop=2
set expandtab
set shiftwidth=2

set list
set listchars=tab:▸\ ,trail:·

"Required by vimClojure.vim
syntax on
filetype plugin indent on

" Set spell check behaviour for specific filetypes, was setlocal spell spelllang=en_gb
autocmd BufRead,BufNewFile *.md,*.mdown,*.txt setlocal nospell
au BufRead,BufNewFile *.hbs,*.erb setfiletype html

" NERDTree configs
let NERDChristmasTree=1
let NERDTreeShowBookmarks=1
" Start NERDTree and move cursor to main window 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Quit vim if NERDTree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Taglist configs
let Tlist_Use_Right_Window = 1
" Display only tags for the active file (as oppose to all files in buffer)
" let Tlist_Show_One_File=1
" Fold tags for all non active files in buffer 
let Tlist_File_Fold_Auto_Close=1

" Custom key bindings
" <F8> toggle taglist
nnoremap <silent> <F8> :TlistToggle<CR>  
