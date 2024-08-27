return { -- Set the Color Scheme
	"EdenEast/nightfox.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Load the colorscheme here.
		vim.cmd.colorscheme("nordfox")
		vim.cmd.hi("Comment gui=none")
	end,
}
