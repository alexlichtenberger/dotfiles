return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set(
			"n",
			"<leader>vf",
			"<cmd>Neotree filesystem reveal left toggle<cr>",
			{ desc = "[V]iew [F]iletree" }
		)
	end,
}

