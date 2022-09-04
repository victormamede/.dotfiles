require("telescope").setup({
	pickers = {
		find_files = {
			theme = "dropdown",
		},
	},
})

local telescope = require("telescope.builtin")

local opts = {
	noremap = true,
	silent = true,
}

vim.keymap.set("n", "<leader>ff", telescope.find_files, opts)
vim.keymap.set("n", "<leader>fw", telescope.live_grep, opts)
vim.keymap.set("n", "<leader>fb", telescope.buffers, opts)
vim.keymap.set("n", "<leader>fh", telescope.help_tags, opts)
