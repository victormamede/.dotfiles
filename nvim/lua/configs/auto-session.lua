require("auto-session").setup({
	log_level = "error",

	cwd_change_handling = {
		post_cwd_changed_hook = function()
			require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
		end,
	},
})
