lua require 'init'

set number
set nocompatible	" be iMproved, required
set modifiable
set buftype=
filetype off		" required

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'tpope/vim-sensible'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kyazdani42/nvim-web-devicons',
Plug 'neovim/nvim-lspconfig'
Plug 'romgrk/barbar.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme gruvbox
map <silent> <C-b> :NERDTreeFocus<CR>

filetype plugin indent on 
syntax on
set background=dark
highlight ColorColumn ctermfg=0 guibg=0
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 shiftwidth=4 softtabstop=0
set smartindent
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
set encoding=UTF-8
let g:ctrlp_max_files=0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
let g:prettier#config#trailing_comma = 'all'
