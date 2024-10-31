return {
  {
    "nvim-treesitter/nvim-treesitter",
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

