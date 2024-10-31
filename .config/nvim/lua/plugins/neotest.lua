return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
      "fredrikaverpil/neotest-golang",
      "nvim-neotest/neotest-jest",
      "olimorris/neotest-phpunit",

    },
    keys = {
      {"<leader>ttv", function() require("neotest").summary.toggle() end, desc = "Toggle tests tab"},
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require('neotest-jest')({
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          }),
          require("neotest-golang"),
          require("neotest-python"),
          require("neotest-phpunit"),
        },
      })
    end,
  }
}
