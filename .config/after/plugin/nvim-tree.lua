require("nvim-tree").setup({
  filters = {custom = {'*.tmp', '.git'}},
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {enable = true, update_cwd = true, ignore_list = {}},
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd = nil,
    -- the command arguments as a list
    args = {}
  },
  filters = {custom = {'.git'}},
  renderer = {
    indent_markers = {enable = true, icons = {corner = "└ ", edge = "│ ", none = "  "}}
  }
})

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
