set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set cursorline
set termguicolors

call plug#begin('~/.nvim/plugged')

" temas
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'EdenEast/nightfox.nvim' 

" status bar
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" typing 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"coc-config
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" temas
 
"set background=dark 
"let g:gruvbox_contrast_dark  
"colorscheme gruvbox

"colorscheme tender
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:lightline = { 'colorscheme': 'tender' }
"let g:airline_theme = 'tender'

colorscheme nightfox

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Netrw config
let g:netrw_keepdir = 0
let g:netrw_winsize = 30


let NERDTreeQuitOnOpen=1

let mapleader=" "

" faster scrolling
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :Lexplore<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-definition)

" buffers
map <Leader>ob :Buffers<cr>
map <Leader>p :Files<cr>

