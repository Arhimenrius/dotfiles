return {
  "nvim-tree/nvim-web-devicons",
  {
    "xiantang/darcula-dark.nvim",
    config = function()
      vim.cmd.colorscheme("darcula-dark")
    end,
  },
  { 
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "dracula"
        },
      })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

}
