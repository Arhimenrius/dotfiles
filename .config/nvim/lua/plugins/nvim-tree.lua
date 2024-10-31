return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      {"<C-n>", ":NvimTreeToogle<cr>", desc = "Toggle Nvimtree"}
    },
    config = function() 
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
    end,
  }
}
