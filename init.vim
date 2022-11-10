call plug#begin("~/.local/share/nvim/plugged")
Plug 'jremmen/vim-ripgrep'
Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'rktjmp/lush.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'briones-gabriel/darcula-solid.nvim'

call plug#end()

syntax on

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" terminal

nmap <C-j> <Plug>(coc-terminal-toggle)<CR>
imap <C-j> <Plug>(coc-terminal-toggle)<CR>


" multicursor

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)


"reload nvim
imap <F9> <C-O>:source $MYVIMRC<CR>
nmap <F9> :source $MYVIMRC<CR>

" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" coc configuration
" go to definition
nmap <silent> gd <Plug>(coc-definition)


" coc-explorer
nmap <c-b> <Cmd>CocCommand explorer<CR>
imap <c-b> <C-O>:CocCommand explorer <Enter><C-O>

"airline
let g:airline_theme='distinguished'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" solo cuando veo que no siguen el estandar
" let g:python_recommended_style=0

" config nvim
set number
set showcmd
set mouse=a
set clipboard=unnamedplus
set encoding=UTF-8
imap <Home> <C-O>^
nmap <Home> ^

set nowrap
set expandtab
set autoindent
set smarttab
set cindent
autocmd FileType javascript setlocal sw=2

imap <C-s> <C-O>:w<CR>
nmap <C-s> :w<CR>
imap <C-e> <C-O>:u<CR>
nmap <C-e> :u<CR>
imap <C-w> <C-O>:q<CR>
nmap <C-w> :q<CR>
imap <C-x> <C-O>:qa<CR>
nmap <C-x> :qa<CR>
imap <C-r> <C-O>:redo<CR>
imap <C-f> <C-O>:sp<CR>
nmap <C-f> :sp<CR>
imap <C-g> <C-O>:vsp<CR>
nmap <C-g> :vsp<CR>
imap <Tab> <C-t>
imap <S-Tab> <C-d>
nmap <Tab> >>
nmap <S-Tab> <<

" themes
set termguicolors
set background=dark
colorscheme darcula-solid

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

" coc-python (for python2)
" coc-pyright (for python3)
" coc-pairs
" coc-explorer
" coc-html
" coc-tsserver
