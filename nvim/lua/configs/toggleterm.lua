require("toggleterm").setup({
	size = vim.o.columns * 0.4,
	open_mapping = "<C-t>",
	direction = "vertical",
	float_opts = {
		border = "curved",
	},
})
