return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-dap-repl-highlights"
    },
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { 
          "bash", 
          "css", 
          "csv", 
          "diff", 
          "dockerfile", 
          "gitignore",
          "go",
          "graphql",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "lua",
          "luadoc",
          "luap",
          "make",
          "markdown",
          "mermaid",
          "nginx",
          "php",
          "python",
          "regex",
          "sql",
          "ssh_config",
          "terraform",
          "tsx",
          "typescript",
          "vue",
          "xml",
          "yaml",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  },
  "nvim-treesitter/nvim-treesitter-context",
}

