require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Using LSP
	use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
	use("williamboman/nvim-lsp-installer") -- Auto install lsp
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("mhartington/formatter.nvim") -- Formatting

	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("rafamadriz/friendly-snippets") -- More snippets
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- Better syntax highlighting
	use("sheerun/vim-polyglot")
	use("kyazdani42/nvim-web-devicons") -- for file icons
	use({ "kyazdani42/nvim-tree.lua", tag = "nightly" }) -- file tree
	use("nvim-lualine/lualine.nvim") -- status line
	use("rcarriga/nvim-notify") -- notifications
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	}) -- quick file finding
	use("vimwiki/vimwiki") -- personal wiki
	use("glepnir/dashboard-nvim") -- dashboard
	use({ "akinsho/bufferline.nvim", tag = "v2.*" }) -- buffer tabs
	use("ray-x/lsp_signature.nvim") -- signatures when typing
	use("lewis6991/gitsigns.nvim") -- git integration
	use({ "akinsho/toggleterm.nvim", tag = "v2.*" }) -- terminal
	use({ "ellisonleao/gruvbox.nvim" }) -- Theme
	use 'rmagatti/auto-session' -- Session restore
end)
