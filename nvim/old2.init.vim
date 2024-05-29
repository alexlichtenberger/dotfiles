"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              ALEX'S                                     "
"                                                                         "
"           ███╗ ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗               "
"           ████╗██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝               "
"           ██╔████║██║   ██║██║██╔████╔██║██████╔╝██║                    "
"           ██║╚███║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║                    "
"           ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗               "
"           ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝               "
"                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" PLUGINS ----------------------------------------------------------

call plug#begin('~/.vim/plugged')

  " code completions
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Auto brackets/quotes
  Plug 'jiangmiao/auto-pairs'

  " commenting/uncommenting
  Plug 'scrooloose/nerdcommenter'

  " Async syntax and linting
  Plug 'dense-analysis/ale'

  " start screen
  Plug 'mhinz/vim-startify'

  " git integration
  Plug 'tpope/vim-fugitive'

  " Color theme
  Plug 'haishanh/night-owl.vim'

  " File navigation
  Plug 'wincent/command-t'

  "file explorer sidebar
  Plug 'preservim/nerdtree'

  " file type icons in nerdtree
  Plug 'ryanoasis/vim-devicons'

  " open files to the same place
  Plug 'farmergreg/vim-lastplace'

  " git gutter but better
  Plug 'mhinz/vim-signify'

  " Status Line
  Plug 'itchyny/lightline.vim'

  " tabs work with nerdtree
  Plug 'jistr/vim-nerdtree-tabs'

  " Fuzzy Finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

call plug#end()

" SCRIPT -------------------------------------------------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Add numbers when not in buffer,
" Add hybrid numbers when in buffer 
set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 2 spaces.
set shiftwidth=2

" Set tab width to 2 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" don't show the mode you are on the last line.
set noshowmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xls

" Intellignet Indenting
set smartindent

" Set update time to be much, much faster (quarter second)
set updatetime=200

" Set new splits to open below the current window
set splitbelow
set splitright

" Enable Mouse Support
set mouse=a

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
  set undodir=~/.vim/backup
  set undofile
  set undoreload=10000
endif

" Set colorscheme
autocmd VImEnter * colorscheme night-owl
let g:lightline = { 'colorscheme': 'nightowl' }

" highlighting on cursor pause
autocmd CursorHold * silent call CocActionAsync('highlight')

" enable 24bit true color
if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Set the status line to go in the right place.
set laststatus=2

let g:CommandTPreferredImplementation='lua'

let g:nerdtree_tabs_open_on_console_startup=2

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

if has('nvim')
    au! TabNewEntered * Startify
endif

" BINDINGS -----------------------------------------------------------------

let mapleader = "\\"

let g:fzf_preview_window = ['right,60%', 'ctrl-0']


" Ctrl-B to toggle the file viewer
nmap <c-b> <plug>NERDTreeTabsToggle<CR>

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Ctrl-Z to undo
nmap <c-z> u
imap <c-z> <Esc>ui

"Ctrl+/ for commenting and uncommenting"
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>:gv<cr>
imap <c-_> <esc><Plug>NERDCommenterToggle<CR>:gi<cr>

" Clear serch highlights
nnoremap <leader>uh :nohlsearch<CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Tab navigation like a Web Browser.
 "nnoremap <C-S-tab> :tabprevious<CR>
 "nnoremap <C-tab>   :tabnext<CR>
 "nnoremap <C-t>     :tabnew<CR>
 "inoremap <C-S-tab> <Esc>:tabprevious<CR>i
 "inoremap <C-tab>   <Esc>:tabnext<CR>i
 "inoremap <C-t>     <Esc>:tabnew<CR>
" Temporary replacement:
nnoremap <leader>[     :tabprevious<CR>
nnoremap <leader>]     :tabnext<CR>
nnoremap <leader>t     :tabnew<CR>
inoremap <leader>[     <Esc>:tabprevious<CR>inoremap
inoremap <leader>]     <Esc>:tabnext<CR>i
inoremap <leader>t     <Esc>:tabnew<CR>

" Alt- up/down to move lines
nmap <a-up> ddkkp<esc>
imap <a-up> <esc>ddkkpi
nmap <a-down> ddp<esc>
imap <a-down> <esc>ddpi

nmap <c-p> :FzfPreviewProjectFilesRpc<CR>

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
