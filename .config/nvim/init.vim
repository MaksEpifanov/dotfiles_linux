" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

set encoding=utf8
" Plug
call plug#begin()
" Themes (gruvbox)
Plug 'morhetz/gruvbox'
" File explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
" Lightine
Plug 'itchyny/lightline.vim'
" Start page
Plug 'mhinz/vim-startify'
call plug#end()

" Tab
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Number
set number

" Highlight search results
set hlsearch              

set ignorecase            " Search ingnoring case

set mouse=a

" Themes
syntax enable
syntax on
colorscheme gruvbox

" Navigation works in Russian
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" NerdTree map and setting
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = []

" fzf setting
nnoremap <C-p> :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" lightline setting
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }


" open new split panes to right and below
set splitright
set splitbelow
