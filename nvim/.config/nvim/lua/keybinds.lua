-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- save file without colon
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "[F]ile [S]ave" })
