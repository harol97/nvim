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
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on


" airline
let g:airline_theme='distinguished'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" config nvim
set number
set mouse=a
" install xclip if it is not work
set clipboard=unnamedplus
set showcmd
set encoding=utf-8

set nospell
set nowrap
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
nnoremap <C-s> :w<CR>
nnoremap <C-e> :u<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-x> :wqa<CR>

" symplifold
set foldmethod=indent

" themes
set background=dark
colorscheme darcula-solid
"colorscheme gruvbox
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
