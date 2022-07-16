set encoding=utf-8
syntax enable
set number
set relativenumber
set mouse-=a
set noswapfile
" set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'glepnir/dashboard-nvim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'takac/vim-fontmanager'
Plug 'powerline/fonts'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'sindresorhus/hyper-snazzy'
Plug 'tpope/vim-surround'
Plug 'preservim/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf'
Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'
Plug 'rebelot/kanagawa.nvim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'pineapplegiant/spaceduck'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}
call plug#end()

colorscheme spaceduck     
" let g:airling_theme =  atomic
let g:airline_theme='atomic'
let g:airline_powerline_fonts = 1

let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '192.168.1.7'
let g:mkdp_port = 8080
function g:EchoUrl(url)
    :echo a:url
endfunction
let g:mkdp_browserfunc = 'g:EchoUrl'


nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR> 
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <A-t> :TagbarToggle<CR>
map <C-h> gT 
map <C-l> gt 

nnoremap <F2> :ToggleTerm direction=float<CR>

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <Esc> <C-\><C-n>
nnoremap <C-A-h> <C-w>>
nnoremap <C-A-l> <C-w><
nnoremap <C-A-k> <C-w>+
nnoremap <C-A-j> <C-w>-
