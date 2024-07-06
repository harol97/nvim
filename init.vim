" unmap <C-W><C-D> "just is necessary
" unmap <C-W>d "just is necessary


call plug#begin("~/.local/share/nvim/plugged")
Plug 'jremmen/vim-ripgrep'
Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'rktjmp/lush.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'cdmedia/itg_flat_vim'
Plug 'josuegaleas/jay'
Plug 'https://github.com/xiantang/darcula-dark.nvim'
Plug 'https://github.com/parkerault/onivim-theme-hybrid'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Vim-Plug
"Plug 'olimorris/onedarkpro.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'udalov/kotlin-vim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

source $HOME/.config/nvim/file.lua

autocmd BufWritePre * silent! call CocAction('runCommand', 'editor.action.organizeImport')

syntax on


inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"teleescope
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>
"telescop



" terminal

nmap <C-j> <Plug>(coc-terminal-toggle)<CR>
imap <C-j> <Plug>(coc-terminal-toggle)<CR>

" multicursor
nmap <C-c> <Cmd>\\\<CR>

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)



"reload nvim
imap <F9> <C-O>:source $MYVIMRC<CR>
nmap <F9> :source $MYVIMRC<CR>
imap <F8> <C-O>:CocRestart<CR>
nmap <F8> :CocRestart<CR>

" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" coc configuration
" go to definition
nmap <silent> gd <Plug>(coc-definition)


" explorer
nmap <c-b> <Cmd>NvimTreeToggle<CR>
imap <c-b> <C-O>:NvimTreeToggle<Enter><C-O>

" airline
let g:airline_theme='wombat'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)


" solo cuando veo que no siguen el estandar
" let g:python_recommended_style=0

" config nvim
filetype plugin indent on
set number
set showcmd
set mouse=a
set clipboard=unnamedplus
set encoding=UTF-8
imap <Home> <C-O>^
nmap <Home> ^
set sw=2
set expandtab
set nowrap
autocmd FileType javascript setlocal sw=2 expandtab
autocmd FileType java setlocal sw=8 noexpandtab 
autocmd FileType xml setlocal sw=8 noexpandtab 
autocmd FileType javascriptreact setlocal sw=2 expandtab
autocmd FileType typescript setlocal sw=2 expandtab
autocmd FileType typescriptreact setlocal sw=2 expandtab
autocmd FileType html setlocal sw=2 expandtab
autocmd FileType htmldjango setlocal sw=4 expandtab
autocmd FileType scss setlocal sw=2 expandtab
autocmd FileType css setlocal sw=2 expandtab
" sudo apt-get install xclip
"
" clipboard

" now it is possible to paste many times over selected text
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

imap <C-s> <C-O>:w<CR>
nmap <C-s> :w<CR>
imap <C-r> <C-O>:u<CR>
nmap <C-r> :u<CR>
imap <C-w> <C-O>:q<CR>
nmap <C-w> :q<CR>
imap <C-x> <C-O>:qa<CR>
nmap <C-x> :qa<CR>
imap <C-y> <C-O>:redo<CR>
nmap <C-y> :redo<CR>
imap <C-f> <C-O>:sp<CR>
nmap <C-f> :sp<CR>
imap <C-g> <C-O>:vsp<CR>
nmap <C-g> :vsp<CR>
imap <Tab> <C-t>
imap <S-Tab> <C-d>
nmap <Tab> >>
nmap <S-Tab> <<
nmap ñ :m-2<CR>
nmap , :m+1<CR>

" themes
set termguicolors
set background=dark
"colorscheme gruvbox

let g:onedark_config = {
  \ 'style': 'darker',
\ }
colorscheme onedark

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
imap <S-left> <C-O>:TmuxNavigateLeft<cr>
nmap <S-left> :TmuxNavigateLeft<cr>
imap <S-down> <C-O>:TmuxNavigateDown<cr>
nmap <S-down> :TmuxNavigateDown<cr>
imap <S-up>  <C-O>:TmuxNavigateUp<cr>
nmap <S-up> :TmuxNavigateUp<cr>
imap <S-right>  <C-O>:TmuxNavigateRight<cr>
nmap <S-right> :TmuxNavigateRight<cr>

" coc-python (for python2)
" coc-pyright (for python3)
" coc-pairs
" coc-explorer
" coc-html
" coc-tsserver
" coc-css
" coc-prettier
" coc-markdown-preview-enhanced
" coc-pydocstring
" coc-json
" nerd font -> FantasqueSansMono Nerd Font Mono

"sure XDG_CONFIG_HOME set export XDG_CONFIG_HOME="$HOME/.config"
"
