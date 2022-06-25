call plug#begin("~/.vim/plugged")

Plug 'https://github.com/tmhedberg/SimpylFold'
"Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

syntax on

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" config nvim
set number
set mouse=a
set clipboard=unnamed
set showcmd
set encoding=utf-8
set nowrap

set tabstop=4
set shiftwidth=4
"set expandtab
set autoindent
set smartindent
nnoremap <C-s> :w<CR>
nnoremap <C-z> :u<CR>
nnoremap <C-w> :q<CR>
nnoremap <C-x> :qa<CR>

" themes
colorscheme darcula-solid
set background=dark
set termguicolors


" panel bar
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nnoremap <C-b> :NERDTreeToggle<CR>

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <c-left> :TmuxNavigateLeft<cr>
nnoremap <c-down> :TmuxNavigateDown<cr>
nnoremap <c-up>  :TmuxNavigateUp<cr>
nnoremap <c-right>  :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
