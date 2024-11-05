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


vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "[G]o to [d]efinition"})
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, { desc = "[G]o to [r]eference"})
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, { desc = "[G]o to [D]declaration"})
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "Show details of element (Hover)"})
vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, { desc = "Open LSP Float"})
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename(nil) end, { desc = "<leader> [r]e[n]ame"})
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "<leader> [c]ode [a]ction"})

vim.keymap.set("n", "<leader>ttv", function() require("neotest").summary.toggle() end, { desc = "Toggle tests tab"})

vim.keymap.set("n", "<C-n>", ":NvimTreeToogle<cr>", { desc = "Toggle Nvimtree"})


vim.keymap.set("n", "<leader>sh", function() require("telescope.builtin").help_tags() end, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", function() require("telescope.builtin").keymaps() end, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", function() require("telescope.builtin").find_files() end, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", function() require("telescope.builtin").builtin() end, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", function() require("telescope.builtin").grep_string() end, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", function() require("telescope.builtin").live_grep() end, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", function() require("telescope.builtin").diagnostics() end, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", function() require("telescope.builtin").resume() end, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", function() require("telescope.builtin").oldfiles() end, { desc = "[S]earch Recent Files (\".\" for repeat)" })
vim.keymap.set("n", "<leader><leader>", function() require("telescope.builtin").buffers() end, { desc = "[ ] Find existing buffers" })

vim.api.nvim_set_keymap('n', '<F8>', [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F9>', [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-F10>', [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F5>', [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

