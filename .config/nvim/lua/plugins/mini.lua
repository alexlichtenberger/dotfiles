return { -- Collection of various small independent plugins/modules
		"echasnovski/mini.nvim",
		config = function()
			-- Better Around/Inside textobjects
			--
			-- Examples:
			--  - va)  - [V]isually select [A]round [)]paren
			--  - yinq - [Y]ank [I]nside [N]ext [']quote
			--  - ci'  - [C]hange [I]nside [']quote
			require("mini.ai").setup({ n_lines = 500 })

			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			--
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sd'   - [S]urround [D]elete [']quotes
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()

			-- Simple and easy statusline.
			local statusline = require("mini.statusline")
			-- set use_icons to true if you have a Nerd Font
			statusline.setup({ use_icons = vim.g.have_nerd_font })

			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return "%2l:%-2v"
			end

			-- sessions
			require("mini.sessions").setup()

			-- alt hjkl to move selection
			require("mini.move").setup()

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
			require("mini.comment").setup({})

			-- auto pair brackets and quotes
			require("mini.pairs").setup({})
		end,
	}

