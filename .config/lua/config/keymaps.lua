vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Remove highlights on search by pressing <esc> in normal mode
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" }) -- diagnostic

-- Disable arrows in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!"<CR>')

-- Navigations around windows/tabs
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window/tab" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window/tab" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window/tab" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window/tab" })
vim.keymap.set("n", "<leader>]", "<C-w><C-s>", { desc = "Open new window/tab split horizontally" })
vim.keymap.set("n", "<leader>\\", "<C-w><C-v>", { desc = "Open new window/tab split vertically" })

