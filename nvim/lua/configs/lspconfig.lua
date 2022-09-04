local key_mapper = function(mode, key, result, opts)
	local options = opts or {}
	options["noremap"] = true
	options["silent"] = true

	vim.keymap.set(mode, key, result, options)
end

key_mapper("n", "<leader>e", vim.diagnostic.open_float)

local on_attach = function(_, bufnr)
	local bufopts = { buffer = bufnr }
	key_mapper("n", "gD", vim.lsp.buf.declaration, bufopts)
	key_mapper("n", "gd", vim.lsp.buf.definition, bufopts)
	key_mapper("n", "gi", vim.lsp.buf.implementation, bufopts)
	key_mapper("n", "gr", vim.lsp.buf.references, bufopts)
	key_mapper("n", "<leader>j", vim.lsp.buf.code_action, bufopts)
	key_mapper("n", "<leader>r", vim.lsp.buf.rename, bufopts)
	key_mapper("n", "<leader>k", vim.lsp.buf.hover, bufopts)
	key_mapper("n", "<leader>l", vim.lsp.buf.signature_help, bufopts)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require("lspconfig")

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.sumneko_lua.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.cmake.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.marksman.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.solargraph.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- auto installer
require("nvim-lsp-installer").setup({
	automatic_installation = true,
})
