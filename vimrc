
let mapleader = ","
" basic
set number
set noshowmode
set history=1000
set clipboard=unnamed
set cursorline
set noswapfile
set ruler
" auto indent
set autoindent
"太長時不換行
set nowrap
set showcmd
set scrolloff=5
set foldcolumn=2

set redrawtime=20000

set regexpengine=0

colorscheme gruvbox

set background=dark

" space and tab
set softtabstop=2
set shiftwidth=2
set expandtab
" 顯示特殊字元
set list
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:␣
"eol:¬,
"
"search
set hlsearch
set ignorecase
set incsearch
set smartcase

" tab
" 必定顯示tab
set showtabline=2
set splitbelow
set splitright


syntax on

filetype on
filetype indent on
filetype plugin on

" quickfix
set switchbuf+=usetab,newtab

" taglist
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

"Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript'

"Plug 'waywayfox/vim-wayway-potion'
"Plug 'SirVer/ultisnips'
"Plug 'mlaursen/vim-react-snippets'

"snipmate setup
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Optional:
Plug 'honza/vim-snippets'


" Markdown plugin
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}



" Initialize plugin system
call plug#end()

