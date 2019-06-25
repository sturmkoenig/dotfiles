call plug#begin('~/.vim/plugged')

" undo visualistaion plugin
Plug 'simnalamburt/vim-mundo'

" latex
Plug 'lervag/vimtex'

" mips highlighting
Plug 'harenome/vim-mipssyntax'

" snippet engine
Plug 'SirVer/ultisnips'

" actuall snippets
Plug 'honza/vim-snippets'

" vim airline light bottom bar
Plug 'vim-airline/vim-airline'

" themes for airline
Plug 'vim-airline/vim-airline-themes'

" better surround options
Plug 'tpope/vim-surround'

" propagates the feature of '.' to pluggins
Plug 'tpope/vim-repeat'

" asyncronously makes c code 
Plug 'neomake/neomake'

" auto completition
Plug 'valloric/YouCompleteMe'

" syntax checking
" Plug 'w0rp/ale'
 
" making tab usable with snippets and ycm
Plug 'ervandew/supertab'

" switches for true/false etc
Plug 'AndrewRadev/switch.vim'

" gruvbox color scheme
Plug 'morhetz/gruvbox'

" better find with two characters
Plug 'justinmk/vim-sneak'

" file explorer plugin
Plug 'scrooloose/nerdtree'

" automatically close brackets
Plug 'Raimondi/delimitMate'

" Grammar checking
Plug 'rhysd/vim-grammarous'

" plugin that generates folds automatically
Plug 'Konfekt/FastFold'

" plugin for loading vim-notes
Plug 'xolox/vim-misc'

" plugin for better note taking
Plug 'xolox/vim-notes'

" Comment and uncomment lines with <C-c> and <C-x>
Plug 'scrooloose/nerdcommenter'

" fortran syntax highlighting
Plug 'tomedunn/vim.fortran'

" haskell syntax highlighting
Plug 'neovimhaskell/haskell-vim'

" haskell stuff
Plug 'bitc/vim-hdevtools'

" vim calendar
Plug 'itchyny/calendar.vim'

" makes vim asyncrounously (not nessasary with neovim but hey now its
" compatible with the cip)
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" debbugger extension for neovim supporting gdb, jdb, lldb, pdb and some more
Plug 'idanarye/vim-vebugger'

" javaautocompleter
Plug 'artur-shaik/vim-javacomplete2'

" draw ascii boxes and diagrams
Plug 'gyim/vim-boxdraw'

" Initialize plugin system
call plug#end()

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsEditSplit="vertical"

" youcompleteme related options
set encoding=utf-8
" let g:UltiSnipsExpandTrigger = "<tab>"

" Spell check options
set spell spelllang=de
set spell!
let g:grammourous#use_vim_spelllang = 1

" Mapping additions
"
" switch vim mapping
" set the key for triggering true<->false switch
let g:switch_mapping = "-"

" set mapleader to space
let mapleader = ","

" custom mappings for making spell check more usable
nnoremap <leader>n ]s
nnoremap <leader>p [s
nnoremap <leader>a z=
nmap <leader>s :set spell!<CR>

" grammar checking shortcuts
" move to next/previous error
nmap <leader>gn <Plug>(grammarous-move-to-next-error)
nmap <leader>gp <Plug>(grammarous-move-to-previous-error)

" options concerning the info box
nmap <leader>gm <Plug>(grammarous-move-to-info-window)
nmap <leader>go <Plug>(grammarous-open-info-window)
nmap <leader>gc <Plug>(grammarous-close-info-window)

" remove/fix error or disable rules
nmap <leader>gr <Plug>(grammarous-remove-error)
nmap <leader>gf <Plug>(grammarous-fixit)
nmap <leader>gd <Plug>(grammarous-disable-rule)

" settings for the unicode conversion
let g:unicoder_cancel_normal = 1
let g:unicoder_cancel_insert = 1
let g:unicoder_cancel_visual = 1
nnoremap <C-ü> :call unicoder#start(0)<CR>
inoremap <C-ü> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-ü> :<C-u>call unicoder#selection()<CR>

" settings for the vim calendar 
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" for better filetype detection
let g:tex_flavor = 'latex'

" vimtex compile method
let g:vimtex_view_method = 'zathura'

" for neovim support
if has("nvim")
  let g:vimtex_latexmk_progname = 'nvr'
endif

" inteligent file recognition
filetype indent plugin on

" enable syntax highlighting
syntax on

" enabel folding
set foldmethod=indent
set foldlevel=99

" Better comman-line completition
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" line numbering and relative numbers
set number
set relativenumber

" no annoying sounds when an error occurs
set visualbell

" enable use of mouse 
set mouse=a

" default tab options
set shiftwidth=4
set softtabstop=4

" make Y behave like D yanking to the end of line instead of yanking the whole line
map Y y$

" clears screen after search
nnoremap <C-l> :nohl <CR><C-l>

" tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

colorscheme gruvbox
set background=dark
set mouse =

" start nerdtree if no file is specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

" start nerdtree with strg-n
map <C-n> :NERDTreeToggle<CR>

" let &t_ZH="\e[3m" 
" let &t_ZR="\e[23m"
" set t_ZH=^[[3m
" set t_ZR=^[[23
highlight Comment gui=italic

" Nerdcommenter settings

" Add spaces after comment
let g:NERDSpaceDelims = 1

"add python map
nnoremap <buffer> <C-p> :exec '!python' shellescape(@%, 1)<cr>

set clipboard=unnamed
let g:EclimCompletionMethod = 'omnifunc'

" undo settings | set it so that vim has persistent undo
set undofile
set undodir=~/.vim/undo
nnoremap <C-t> :MundoToggle<CR>
let mapleader = " "
