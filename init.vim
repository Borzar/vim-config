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

call plug#begin('~/.nvim/plugged')

" temas
Plug 'morhetz/gruvbox'
Plug 'shaunsingh/nord.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'jacoborus/tender.vim'

" status bar
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shaunsingh/nord.nvim'

"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'

" typing 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"treesitter
"lua require'nvim-treesitter.configs'.setup{
	"ensure_installed = {
		"'lua',
		"'javascript',
		"'typescript',
		"'html',
		"'css',
	"},
	"highlight = {
		"enable=true
	"}
"}
"
" coc-config
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" temas
""colorscheme gruvbox
"let g:gruvbox_contrast_dark="soft"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme tender
let g:lightline = { 'colorscheme': 'tender' }
let g:airline_theme = 'tender'

let NERDTreeQuitOnOpen=1
let mapleader=" "

" faster scrolling
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>

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

