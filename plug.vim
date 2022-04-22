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
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'windwp/nvim-autopairs'
	Plug 'folke/lsp-colors.nvim'
	Plug 'onsails/lspkind-nvim'
	Plug 'tami5/lspsaga.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'windwp/nvim-ts-autotag'
	Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" 	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
endif

call plug#end()
