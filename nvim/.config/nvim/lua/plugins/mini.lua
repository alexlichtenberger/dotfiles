return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- sessions
		require("mini.sessions").setup()

		-- Start Screen
		local starter = require("mini.starter")
		starter.setup({
			items = {
				starter.sections.telescope(),
				starter.sections.recent_files(10, true, true),
				starter.sections.sessions(10, true),
				starter.sections.builtin_actions(),
			},
		})

		-- gcc to toggle comments
		require("mini.comment").setup()
		-- auto pair brackets and quotes
		require("mini.pairs").setup()
		-- around and in text objects
		require("mini.ai").setup()
		-- move text with alt hjkl
		require("mini.move").setup()
		-- split and join lines
		require("mini.splitjoin").setup()
		-- surround movements
		require("mini.surround").setup()
		-- better simple status line
		require("mini.statusline").setup()
	end,
}
