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
set nocul

call plug#begin('~/.nvim/plugged')

" themes
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'EdenEast/nightfox.nvim' 
Plug 'tanvirtin/monokai.nvim'
Plug 'tribela/vim-transparent'
Plug 'savq/melange'
Plug 'heraldofsolace/nisha-vim'
Plug 'louisboilard/pyramid.nvim', {'branch': 'main'}
Plug 'kuznetsss/meadow-nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sjl/badwolf'

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
"Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'santiagovrancovich/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

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

"colorscheme badwolf 
highlight Normal guibg=none ctermbg=NONE cterm=NONE gui=NONE
colorscheme tokyonight 

" signify
highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE

let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let NERDTreeQuitOnOpen=1

let mapleader=" "

" faster scrolling
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>bd :bd<CR>

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
