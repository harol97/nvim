call plug#begin("~/.local/share/nvim/plugged")

Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/morhetz/gruvbox'

call plug#end()

syntax on


" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" coc configuration

" go to definition
nmap <silent> gd <Plug>(coc-definition)

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" coc-explorer
nmap <c-b> <Cmd>CocCommand explorer<CR>
imap <c-b> <C-O>:CocCommand explorer<CR><C-O>

"airline
let g:airline_theme='distinguished'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" solo cuando veo que no siguen el estandar
let g:python_recommended_style=0

" config nvim
set number
set showcmd
set mouse=a
set clipboard=unnamedplus
set encoding=UTF-8

set nowrap
set shiftwidth=4
set expandtab

imap <C-s> <C-O>:w<CR>
nmap <C-s> :w<CR>
imap <C-e> <C-O>:u<CR>
nmap <C-e> :u<CR>
imap <C-w> <C-O>:wq<CR>
nmap <C-w> :wq<CR>
imap <C-x> <C-O>:wqa<CR>
nmap <C-x> :wqa<CR>
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
"colorscheme darcula-solid
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set termguicolors

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
" coc-jedi (for python3)
" coc-pairs
" coc-explorer
" coc-html
" coc--tsserver
