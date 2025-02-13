-- nicer tabline that actually works
return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
	config = function()
		require("barbar").setup()

		require("which-key").add({
			{ "<leader>b",  group = "[B]uffer" },
			{ "<leader>b_", hidden = true },
		})
		vim.keymap.set("n", "<leader>bs", "<cmd>BufferPick<cr>", { desc = "[B]uffer [S]elect" })
		vim.keymap.set("n", "<leader>bc", "<cmd>BufferClose<cr>", { desc = "[B]uffer [C]lose" })
		vim.keymap.set("n", "<leader>bn", "<cmd>BufferNext<cr>", { desc = "[B]uffer [N]ext" })
		vim.keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<cr>", { desc = "[B]uffer [P]revious" })
		vim.keymap.set("n", "<leader>bmn", "<cmd>BufferMoveNext<cr>", { desc = "[B]uffer [M]ove [N]ext" })
		vim.keymap.set("n", "<leader>bmp", "<cmd>BufferMovePrevious<cr>", { desc = "[B]uffer [M]ove [P]revious" })
	end
}
