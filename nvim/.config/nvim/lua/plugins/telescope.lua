return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					".git",
					"node_modules",
					"build",
					"dist",
				},
				theme = "dropdown",
			},
			pickers = {
				find_files = {
					hidden = true,
					find_command = {
						"rg",
						"--files",
						"--hidden",
						"--glob=!**/.git/*",
						"--glob=!**/.idea/*",
						"--glob=!**/.vscode/*",
						"--glob=!**/node_modules/*",
						"--glob=!**/build/*",
						"--glob=!**/dist/*",
						"--glob=!**/yarn.lock",
						"--glob=!**/package-lock.json",
					},
				},
				live_grep = {
					additional_args = {
						"--hidden",
						"--glob=!**/.git/*",
						"--glob=!**/.idea/*",
						"--glob=!**/.vscode/*",
						"--glob=!**/node_modules/*",
						"--glob=!**/build/*",
						"--glob=!**/dist/*",
						"--glob=!**/yarn.lock",
						"--glob=!**/package-lock.json",
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
				file_browser = {
					hijack_netrw = true,
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "file_browser")

		-- Keybinds
		require("which-key").add({
			{ "<leader>f", group = "[F]ile" },
			{ "<leader>f_", hidden = true },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>s_", hidden = true },
			{ "<leader>o", group = "[O]pen" },
			{ "<leader>o_", hidden = true },
			{ "<leader>m", group = "[M]ulticursor" },
			{ "<leader>m_", hidden = true },
			{ "<leader>v", group = "[V]iew" },
			{ "<leader>v_", hidden = true },

			-- save file without colon TODO: This doesn't belong here
			vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "[F]ile [S]ave" }),
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		-- vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch Current [W]ord" })
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		vim.keymap.set("n", "<leader>st", ":TodoTelescope<cr>", { desc = "[S]earch [T]odos" })
		vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Search Open Buffers" })
		vim.keymap.set("n", "<leader>s/", builtin.live_grep, { desc = "[S]earch [/] by grep" })
		vim.keymap.set(
			"n",
			"<leader>sw",
			require("telescope.builtin").lsp_dynamic_workspace_symbols,
			{ desc = "[S]earch [W]orkspace Symbols" }
		)
		vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols, { desc = "[S]earch Document [S]ymbols" })
		vim.keymap.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(
				require("telescope.themes").get_dropdown({ windblend = 10, previewer = false })
			)
		end, { desc = "[/] fuzzy search in file" })
		vim.keymap.set("n", "<leader>fb", function()
			require("telescope").extensions.file_browser()
		end, { desc = "Open [F]ile [Browser]" })
	end,
}
