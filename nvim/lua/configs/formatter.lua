local util = require("formatter.util")

local function prettier()
	return {
		exe = "./node_modules/.bin/prettier",
		args = {
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
		},
		stdin = true,
	}
end
local function prettier_ts()
	return {
		exe = "./node_modules/.bin/prettier",
		args = {
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--parser",
			"typescript",
		},
		stdin = true,
	}
end

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		javascript = { prettier },
		javascriptreact = { prettier },
		typescript = { prettier_ts },
		typescriptreact = { prettier_ts },
		cpp = { require("formatter.filetypes.cpp").clangformat },
		json = { prettier },
		ruby = { require("formatter.filetypes.ruby").rubocop },
		cmake = { require("formatter.filetypes.cmake").cmakeformat },

		["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
	},
})

local opts = {
	noremap = true,
	silent = true,
}

vim.keymap.set("n", "<leader><space>", ":FormatWrite<CR>", opts)
