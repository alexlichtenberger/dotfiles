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
		local ai = require("mini.ai")
		local ai_opts = {
			n_lines = 500,
			custom_textobjects = {
				o = ai.gen_spec.treesitter({ -- code block
					a = { "@block.outer", "@conditional.outer", "@loop.outer" },
					i = { "@block.inner", "@conditional.inner", "@loop.inner" },
				}),
				f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }), -- function
				c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }), -- class
				t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" }, -- tags
				d = { "%f[%d]%d+" }, -- digits
				e = { -- Word with case
					{ "%u[%l%d]+%f[^%l%d]", "%f[%S][%l%d]+%f[^%l%d]", "%f[%P][%l%d]+%f[^%l%d]", "^[%l%d]+%f[^%l%d]" },
					"^().*()$",
				},
				u = ai.gen_spec.function_call(), -- u for "Usage"
				U = ai.gen_spec.function_call({ name_pattern = "[%w_]" }), -- without dot in function name
			},
		}
		ai.setup(ai_opts)
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
