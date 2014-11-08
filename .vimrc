execute pathogen#infect()
syntax on
filetype plugin indent on

" nerdtree
" Open nerdtree automatically when vim starts up if no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Open and close NERDTree
map <C-n> :NERDTreeTabsToggle<CR>

" Help to navegate
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-o> :tabnew<CR>

" Indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
