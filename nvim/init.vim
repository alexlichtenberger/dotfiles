"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              ALEX'S                                     "
"           ███╗ ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗               "
"           ████╗██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝               "
"           ██╔████║██║   ██║██║██╔████╔██║██████╔╝██║                    "
"           ██║╚███║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║                    "
"           ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗               "
"           ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝               "
"                                                                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

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

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

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

" Show the mode you are on the last line.
set showmode

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

" Set tab width to 2 spaces
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

" Set update time to be much, much faster (quarter second)
set updatetime=200

" Set new splits to open below the current window
set splitbelow
set splitright

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusUseNerdFonts = 1
let NERDTreeShowHidden=1
let g:ctrlp_show_hidden=1

let g:nerdtree_tabs_open_on_console_startup=1

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  
  "Async syntax and linting
  Plug 'dense-analysis/ale'
  "git integration
  Plug 'tpope/vim-fugitive'
  "file explorer sidebar
  Plug 'preservim/nerdtree'
  "git status by line in the gutter
  Plug 'airblade/vim-gitgutter'
  "commenting/uncommenting
  Plug 'scrooloose/nerdcommenter'
  " view outline of open file
  Plug 'majutsushi/tagbar'
  " file type icons in nerdtree
  Plug 'ryanoasis/vim-devicons'
  " code completions
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " OneHalf themes
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  " Auto brackets/quotes
  Plug 'jiangmiao/auto-pairs'
  " Git panel
  "Plug 'xuyuanp/nerdtree-git-plugin'
  " surround tokens with quotes and such
  Plug 'tpope/vim-surround'
  " Fuzzy find
  Plug 'ctrlpvim/ctrlp.vim'
  " CSS color highlighting
  Plug 'ap/vim-css-color'
  " Light color theme
  Plug 'romgrk/github-light.vim'
  " start screen
  Plug 'mhinz/vim-startify'
  " tabs work with nerdtree
  Plug 'jistr/vim-nerdtree-tabs'

  "Plug 'preservim/nerdtree' |
            "\ Plug 'Xuyuanp/nerdtree-git-plugin' |
            "\ Plug 'ryanoasis/vim-devicons'

call plug#end()


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

let mapleader = "\\"

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to enter insert mode.
nnoremap <space> i

" Press Enter or control p to start a command
nmap <enter> :

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

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

" TODO: MAKE SHIFT KEYS WORK (ALSO FOR NERDTree) IN KITTY
" Tab navigation like a Web Browser.
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>
" Temporary replacement:
nnoremap <leader>p     :tabprevious<CR>
nnoremap <leader>n     :tabnext<CR>
nnoremap <leader>t     :tabnew<CR>
inoremap <leader>p     <Esc>:tabprevious<CR>i
inoremap <leader>n     <Esc>:tabnext<CR>i
inoremap <leader>t     <Esc>:tabnew<CR>

"Ctrl+/ for commenting and uncommenting"
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>:gv<cr>
imap <c-_> <esc><Plug>NERDCommenterToggle<CR>:gi<cr>

" save on control s
nmap <C-s> :w<cr>
" imap <C-s> :w<cr>

map <C-,> :vsp $MYVIMRC

" open new buffer split to the right 
nmap <c-n> :vnew<cr>

" Toggle dark mode
map <expr> <C-A-d> Toggle_Dark_Mode()

let g:duo_themes = [{'name': 'github-light'}, {'name': 'onehalfdark', 'bg': 'dark'}]

func! s:set_colorscheme(color)
	if has_key(a:color, 'bg')
		let &bg = a:color['bg']
	endif
	if has_key(a:color, 'name')
		exe "colorscheme ".a:color['name']
	endif
endfunc
func! Toggle_Dark_Mode()
	if !exists('g:colors_name')
		let g:colors_name = 'default'
	endif
	let color = filter(copy(g:duo_themes), {k, v -> v['name'] != g:colors_name})[0]
	call s:set_colorscheme(color)
endfunc

" open new terminal at bottom of screen
nmap <c-t> :new<cr>:term<cr>20<C-w>_i

" open ctrlp
nmap <c-p> :CtrlPMixed<cr>

" Move line up or down
nmap <a-up> ddkkp<esc>
nmap <a-down> ddp<esc>

"Tagbar mappings
" Toggle tagbar
nmap <c-o> :TagbarToggle<CR>

"NERDTree specific mappings.
" ctrl+shift+s toggles nerd tree pane.  ctrt+b switches focus form nerdtree to buffer
 map <c-b> <plug>NERDTreeTabsToggle<CR>
"nnoremap <C-A-b> :NERDTreeToggle<CR>
"nnoremap <expr> <c-b> Toggle_Focus()

func Toggle_Focus()
  if exists("b:NERDTree") 
    return ":wincmd p\r"
  else 
    return ":NERDTreeFocus\r" 
  endif
endfunc

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" COC keybinds
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <c-z> u
imap <c-z> <Esc>ui

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{
" Enable Mouse Support
set mouse=a

" Open NERDtree automatically
"au VimEnter *  NERDTree | wincmd p

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
"augroup cursor_off
    "autocmd!
    "autocmd WinLeave * set nocursorline 
    "autocmd WinEnter * set cursorline 
"augroup END

" NERDTree
" Have nerdtree ignore certain files and directories.
"let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

 "Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

 "Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

 "Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

 "Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Set colorscheme
autocmd VImEnter * colorscheme onehalfdark

" highlighting on cursor pause
autocmd CursorHold * silent call CocActionAsync('highlight')


" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
