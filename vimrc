filetype indent on
syntax on
colorscheme Tomorrow-Night
set background=dark
"set guifont=Menlo\ Regular:h18
set number
let mapleader=","
set laststatus=2
set hidden
set history=500
set nowrap
set nobackup
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set backspace=2
set encoding=utf-8
set wildmenu
set ignorecase
set splitbelow
set splitright
set expandtab
set autoread
set timeout ttimeout timeoutlen=200
set smartindent
set scrolloff=5
set autoindent
set autowriteall
set hlsearch
set showmatch
set noerrorbells visualbell t_vb=
set rtp+=/usr/local/opt/fzf

map <leader>p :FZF<CR>
"map <C-p> :FZF<CR>
"nnoremap <leader>p :FilesMru --tiebreak=index<cr>
map <C-p> :FilesMru --tiebreak=index<CR>

map <leader>s :source ~/.vimrc<CR>
map <leader>ev :e ~/.vimrc<CR>

autocmd BufWritePre * :%s/\s\+$//e
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

let $FZF_DEFAULT_COMMAND = 'ag --skip-vcs-ignores -g ""'

let g:fzf_filemru_bufwrite = 1
let g:fzf_filemru_git_ls = 1
let g:fzf_filemru_ignore_submodule = 1

nmap <leader>e :MRU<CR>

nmap <leader>w :bd<CR>

nmap ;w :w<CR>

nmap <C-]> g<C-]>

imap jj <Esc>

"ALE configuration
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 0

"UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:indent_guides_default_mapping = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'startify', 'man', 'rogue']

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'yegappan/mru'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'nathanaelkane/vim-indent-guides'

"Color scheme
Plug 'chriskempson/vim-tomorrow-theme'
call plug#end()

"Tips
" If there are ALE errors on the page, do :ALEDetail to read details.
" ltag methodName and then lopen to view all symbols.
" gc will comment out the selection.
