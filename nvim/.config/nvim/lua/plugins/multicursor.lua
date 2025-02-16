return {
	"jake-stewart/multicursor.nvim",
	branch = "1.0",
	config = function()
		local mc = require("multicursor-nvim")

		mc.setup()

		local set = vim.keymap.set

		-- Add or skip cursor above/below the main cursor.
		set({ "n", "x" }, "<leader>mk", function()
			mc.lineAddCursor(-1)
		end, { desc = "[M]ulticursor add prev line" })
		set({ "n", "x" }, "<leader>mj", function()
			mc.lineAddCursor(1)
		end, { desc = "[M]ulticursor skip next line" })
		set({ "n", "x" }, "<a-K>", function()
			mc.lineAddCursor(-1)
		end, { desc = "[M]ulticursor add prev line" })
		set({ "n", "x" }, "<a-J>", function()
			mc.lineAddCursor(1)
		end, { desc = "[M]ulticursor skip next line" })
		set({ "n", "x" }, "<leader>mK", function()
			mc.lineSkipCursor(-1)
		end, { desc = "[M]ulticursor skip prev line" })
		set({ "n", "x" }, "<leader>mJ", function()
			mc.lineSkipCursor(1)
		end, { desc = "[M]ulticursor skip next line" })

		-- Add or skip adding a new cursor by matching word/selection
		set({ "n", "x" }, "<leader>mn", function()
			mc.matchAddCursor(1)
		end, { desc = "[M]ulticursor [N]ext match" })
		set({ "n", "x" }, "<leader>mN", function()
			mc.matchAddCursor(-1)
		end, { desc = "[M]ulticursor [N]ext match back" })
		set({ "n", "x" }, "<leader>ms", function()
			mc.matchSkipCursor(1)
		end, { desc = "[M]ulticursor [S]kip" })
		set({ "n", "x" }, "<leader>mS", function()
			mc.matchSkipCursor(-1)
		end, { desc = "[M]ulticursor [S]kip match back" })

		-- Add all matches in the document
		set({ "n", "x" }, "<leader>ma", mc.matchAllAddCursors, { desc = "[M]ulticursor [A]ll matches" })

		-- Easy way to add and remove cursors using the main cursor.
		set({ "n", "x" }, "<c-q>", mc.toggleCursor, { desc = "Multicursor add cursor" })

		set("n", "<esc>", function()
			if not mc.cursorsEnabled() then
				mc.enableCursors()
			elseif mc.hasCursors() then
				mc.clearCursors()
			else
				-- Default <esc> handler.
				vim.cmd("nohlsearch")
			end
		end)

		-- bring back cursors if you accidentally clear them
		set("n", "<leader>mr", mc.restoreCursors, { desc = "[M]ulticursor [R]estore" })

		-- Align cursor columns.
		set("n", "<leader>mA", mc.alignCursors, { desc = "[M]ulticursor [A]lign cursors" })

		-- Customize how cursors look.
		local hl = vim.api.nvim_set_hl
		hl(0, "MultiCursorCursor", { link = "Cursor" })
		hl(0, "MultiCursorVisual", { link = "Visual" })
		hl(0, "MultiCursorSign", { link = "SignColumn" })
		hl(0, "MultiCursorMatchPreview", { link = "Search" })
		hl(0, "MultiCursorDisabledCursor", { link = "Search" })
		hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
		hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
	end,
}
