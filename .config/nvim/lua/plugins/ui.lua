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
    config = function ()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = 'dracula',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        -- tabline = {
        --   lualine_a = {'buffers'},
        --   lualine_b = {'branch'},
        --   lualine_c = {'filename'},
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = {'tabs'}
        -- },
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      })
    end
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
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
      require("bufferline").setup({
        options = {
          indicator = {
            icon = " ",
          },
          show_close_icon = false,
          tab_size = 0,
          max_name_length = 25,
          offsets = {
            {
              filetype = "neo-tree",
              text = "  Project",
              highlight = "Directory",
              text_align = "left",
            },
          },
          modified_icon = "",
        },
      })
    end,
  },
}
