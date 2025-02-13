return { -- Set the Color Scheme
	"EdenEast/nightfox.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Load the colorscheme here.
		vim.cmd.colorscheme("nordfox")
		vim.cmd.hi("Comment gui=none")
	end,
}

-- return { -- Set the Color Scheme
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	init = function()
-- 		-- Load the colorscheme here.
-- 		vim.cmd.colorscheme("onedark")
-- 		vim.cmd.hi("Comment gui=none")
-- 	end,
-- }

-- return { -- Set the Color Scheme
-- 	"projekt0n/github-nvim-theme",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	init = function()
-- 		-- Load the colorscheme here.
-- 		vim.cmd.colorscheme("github_dark_dimmed")
-- 		vim.cmd.hi("Comment gui=none")
-- 	end,
-- }
