" Remap ESC to something usable
" Shift + Space
:imap jj <Esc>
" Set our Leader Key to something usable
let mapleader=","
" relative line numbers
nnoremap <Leader>0 :NumbersToggle<CR>

" jsdoc
nnoremap <Leader>d :JsDoc<CR>

" Easier Split Navigation
" Instead of doing CTRL-W + (h|j|k|l)
" Just do CTRL-(h|j|k|l)
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>
" Neovim fix to get CTRL-H Back 💁
if has('nvim')
  nmap <bs> <c-w>h
endif

" window keys
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>wx :close<CR>

" window reordering
nnoremap <Leader>r <C-W><C-R>

" NerdTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" CtrlP
"nnoremap <Leader>p :CtrlPClearCache<bar>CtrlP<CR>
nnoremap <Leader>p :e **/*
nnoremap <Leader>v :vsplit **/*
nnoremap <Leader>s :split **/*


" Tab Switching
nnoremap <Leader>t :tabn<CR>
nnoremap <Leader>r :tabp<CR>

" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>f mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>fa mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>fA mA:Ack "<C-r>=expand("<cWORD>")<cr>”

" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Debugger situation
" Toggle a breakpoint
nnoremap <Leader>db :Breakpoint<CR>

" Clear Buffer Quickly
nnoremap <Leader>bc :BufOnly<CR>
" Buffer Switching
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>

" Git Controls Flow
nnoremap <Leader>gaa :Git add .<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gs :Gstatus<CR>

" Dash docs
nmap <Leader>fd :Dash<CR>

" adjust window size with arrow keys
noremap <right> <C-w>5>
noremap <left> <C-w>5<
noremap <up> <C-w>5+
noremap <down> <C-w>5-

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" make moving to beginning and end of lines easier
noremap H ^
noremap L $

" press enter for newline without insert
nnoremap <cr> o<esc>

" reload vim config
nnoremap <leader>r :source $MYVIMRC<CR>

" clear search
nnoremap <leader>c :let @/ = ""<CR>

if has_key(g:plugs, 'deoplete-ternjs')
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
endif
