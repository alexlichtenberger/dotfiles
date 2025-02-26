return {
	"folke/twilight.nvim",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		vim.keymap.set("n", "<leader>vt", "<cmd>Twilight<cr>", { desc = "Toggle Twilight" }),
	},
}
