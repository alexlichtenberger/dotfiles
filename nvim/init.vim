" Vim Settings
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set number
set splitbelow splitright
set smartindent
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
set title
set wildmenu
set expandtab
set shiftwidth=2
set tabstop=2
set t_Co=256
if (has("termguicolors"))
 set termguicolors
endif
set mouse=a
set updatetime=100
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
autocmd CursorHold * silent call CocActionAsync('highlight')

" Syntax
filetype plugin indent on
filetype plugin on
syntax on

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Plugins (VimPlug)
call plug#begin()
  " Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'

  " Utilities
  Plug 'sheerun/vim-polyglot'
  Plug 'ap/vim-css-color'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim' 
  Plug 'scrooloose/nerdcommenter'

  " Completion / linters / formatters
  Plug 'neoclide/coc.nvim',  {'branch': 'release'}
  Plug 'plasticboy/vim-markdown'

  " Git
  Plug 'mhinz/vim-signify'

  " Theme
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  
  " start screen
  Plug 'mhinz/vim-startify'

call plug#end()

" Color Theme
colorscheme onehalfdark

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onehalfdark'
let g:airline#extensions#tabline#enabled = 1

" Shortcuts
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <silent><expr> <c-p> isdirectory(".git") ? ":GFiles\<CR>" : ":Files\<CR>"
nnoremap <s-p> :Commands<CR>
nnoremap <c-t> :tabnew<CR>:Files<CR>
nnoremap <c-w> :windo bd<CR>:tabclose<CR>
nnoremap <tab> :tabnext<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap G Gzz
nnoremap <leader>uh :nohlsearch<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <s-tab> :tabprevious<CR>
nnoremap <a-k> ddkkp
nnoremap <a-j> ddp
inoremap <a-k> <esc>ddkkpi
inoremap <a-j> <esc>ddpi

"Coc Config
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_node_path = '/home/alex/.nvm/versions/node/v20.11.1/bin/node'
