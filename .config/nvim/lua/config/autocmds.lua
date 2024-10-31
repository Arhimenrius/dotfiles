vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function() 
    require("nvim-tree.api").tree.open()
  end
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
