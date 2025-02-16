return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>od",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "[O]pen [D]iagnostics (Trouble)",
		},
		{
			"<leader>oD",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "[O]pen Buffer [D]iagnostics (Trouble)",
		},
		{
			"<leader>os",
			"<cmd>Trouble symbols toggle focus=false position=right<cr>",
			desc = "[O]pen [S]ymbols (Trouble)",
		},
		{
			"<leader>ot",
			"<cmd>Trouble todo toggle<cr>",
			desc = "[O]pen [T]odos (Trouble)",
		},
		{
			"<leader>oq",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "[O]pen [Q]uickfix List (Trouble)",
		},
	},
}
