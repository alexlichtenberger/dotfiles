return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	-- Automatically close and change tags in __ml files
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},

	-- Adds git related signs to the gutter, as well as utilities for managing changes
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
}
