require("nvim-tree").setup({
	view = {
		side = "left",
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	git = {
		ignore = false,
	},
})

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
-- vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=NONE guifg=NONE")
