set showmatch
set number
set formatoptions+=or
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nojoinspaces
set splitbelow
set splitright
set ignorecase
set smartcase
set scrolloff=5
set wildignore+=*/node_modules/*

autocmd InsertLeave * set nopaste

nnoremap ; :
inoremap jj <esc>

runtime ./plug.vim
if has("unix")
  runtime ./unix.vim
endif
if has("win32")
  runtime ./windows.vim
endif

let g:defx_icons_column_length = 2
