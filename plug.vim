if has("nvim")
	let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
" Plug 'joshdick/onedark.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Plug 'cohama/lexima.vim'
Plug 'tpope/vim-fugitive'
Plug 'KarimElghamry/vim-auto-comment'
Plug 'sheerun/vim-polyglot'

if has("nvim")
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'kristijanhusak/defx-icons'
	Plug 'kristijanhusak/defx-git'
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'windwp/nvim-autopairs'
	Plug 'folke/lsp-colors.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
" 	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
endif

call plug#end()
