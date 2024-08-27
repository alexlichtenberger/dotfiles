-- s-space (esc) clears search highlights
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")

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

-- save file without colon
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "[F]ile [S]ave" })
