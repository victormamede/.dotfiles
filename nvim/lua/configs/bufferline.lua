require("bufferline").setup({
	options = {
		show_close_icon = false,
		show_buffer_close_icons = false,
		themable = false,
		diagnostics = "nvim_lsp",
	},
})

local opts = {
	noremap = true,
	silent = true,
}

vim.keymap.set("n", "K", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "J", ":BufferLineCyclePrev<CR>", opts)

vim.keymap.set("n", "<leader>q", ":bd<CR>", opts)
