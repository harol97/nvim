call plug#begin("~/.local/share/nvim/plugged")

Plug 'rktjmp/lush.nvim'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'briones-gabriel/darcula-solid.nvim'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'rktjmp/lush.nvim'
" Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/Konfekt/FastFold'
"Plug 'davidhalter/jedi-vim'

call plug#end()

syntax on

" prettier

vmap <C-f>f  <Plug>(coc-format-selected)
nmap <C-f>f  <Plug>(coc-format-selected)

"airline
let g:airline_theme='distinguished'
"let g:airline_theme='gruvbox_material'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" config nvim
set number
se mouse=a
set clipboard=unnamedplus
set showcmd
set encoding=utf-8

set nospell
set nowrap
set tabstop=4
set noexpandtab
imap <C-s> <C-O>:w<CR>
nmap <C-s> :w<CR>
imap <C-e> <C-O>:u<CR>
nmap <C-e> :u<CR>
imap <C-w> <C-O>:wq<CR>
nmap <C-w> :wq<CR>
imap <C-x> <C-O>:wqa<CR>
nmap <C-x> :wqa<CR>
imap <C-r> <C-O>:redo<CR>

" fastfold
let g:markdown_folding = 1
let g:rst_fold_enabled = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:zsh_fold_enable = 1
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
let g:fortran_fold=1
let g:clojure_fold = 1
let g:baan_fold=1
autocmd FileType python setlocal foldmethod=indent
nmap <C-k> :foldopen<CR>
nmap <C-l> :foldclose<CR>
imap <C-l> <C-O>:foldclose<CR>
imap <C-k> <C-O>:foldopen<CR>


" symplifold
" set foldmethod=indent

" themes
colorscheme darcula-solid
set termguicolors
set background=dark
" let g:gruvbox_material_background='hard'
" colorscheme gruvbox-material


" panel bar
set mouse=a
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
imap <C-b> <C-O>:NERDTreeToggle<CR>
nmap <C-b> :NERDTreeToggle<CR>

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
imap <c-left> <C-O>:TmuxNavigateLeft<cr>
nmap <c-left> :TmuxNavigateLeft<cr>
imap <c-down> <C-O>:TmuxNavigateDown<cr>
nmap <c-down> :TmuxNavigateDown<cr>
imap <c-up>  <C-O>:TmuxNavigateUp<cr>
nmap <c-up> :TmuxNavigateUp<cr>
imap <c-right>  <C-O>:TmuxNavigateRight<cr>
nmap <c-right> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.xml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.xml'
let g:closetag_filetypes = 'html,xhtml,phtml,xml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,xml'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
