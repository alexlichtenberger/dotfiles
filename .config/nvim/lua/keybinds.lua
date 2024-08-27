-- s-space (esc) clears search highlights
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo \"Those aren't the keys you're looking for...\"<CR>")

