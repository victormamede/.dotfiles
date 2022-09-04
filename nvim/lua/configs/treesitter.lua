require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "c", "cpp", "javascript" },
	highlight = {
		enable = true,
	},
})
