return require"packer".startup(function()
	-- Packer
	use "wbthomason/packer.nvim"

	-- Pywal colourscheme
	use "dylanaraps/wal.vim"

	-- Lines to show indentation level
	-- use "yggdroot/indentline"

	-- Ranger
	use 'francoiscabrol/ranger.vim'

	-- Colorizer
	use "lilydjwg/colorizer"

	-- LSP
	use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'onsails/lspkind-nvim' -- VSCode like icons for nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	-- Autopairs
	use "windwp/nvim-autopairs"

	-- Commenter
	use "terrortylor/nvim-comment"

	-- Minimap
	use 'wfxr/minimap.vim'

	-- NERDTree
	use "preservim/nerdtree"

	-- Icons
	use "ryanoasis/vim-devicons"
	use "vwxyutarooo/nerdtree-devicons-syntax"
	
	-- Git
	use "tpope/vim-fugitive"
	-- use "airblade/vim-gitgutter"
	use "lewis6991/gitsigns.nvim"
	-- use {
	-- 	'tanvirtin/vgit.nvim',
	-- 		requires = {
	-- 	'nvim-lua/plenary.nvim'
	-- 	}
	-- }

	-- Greeter
	use "glepnir/dashboard-nvim"

	-- File finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Statusline
	-- use "vim-airline/vim-airline"
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Colourschemes
	use "ellisonleao/gruvbox.nvim"
end	)
