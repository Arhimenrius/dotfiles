return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls.nvim",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "SmiteshP/nvim-navic",
    },
    config = function()
      local servers = {
        "gopls",
        "golangci_lint_ls",
        "cssls",
        "terraformls",
        "yamlls",
        "dockerls",
        "jsonls",
        "bashls",
        "vacuum",
        "intelephense",
        "graphql",
        "helm_ls",
        "html",
        "postgres_lsp",
        "pyright",
        "volar",
        "tailwindcss",
        "lua_ls",
      }

      local extra_lsp_settings = {
        volar = {
          cmd = { "pnpm", "vue-language-server", "--stdio" },
          init_options = {
            hybridMode = false,
          },
          filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
        },
        ts_ls = {
          init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = "",
                languages = { "vue" },
              },
            },
          },
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
        },
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
              },
              diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {
                  'vim',
                  'require'
                },
              },
              workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
              },
              -- Do not send telemetry data containing a randomized but unique identifier
              telemetry = {
                enable = false,
              },
            },
          },
        }
      }

      local nvim_lsp = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local ts = require("nvim-treesitter.configs")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      require("mason-null-ls").setup({
        ensure_installed = { "jq", "prettierd", "prettier", "eslint_d", "gofumpt", "golines", "phpcsfixer" }
      })
      local none_ls = require("null-ls")
      none_ls.setup({
        sources = {
          none_ls.builtins.formatting.prettierd,
          none_ls.builtins.formatting.phpcsfixer,
          none_ls.builtins.formatting.gofumpt,
          none_ls.builtins.formatting.golines,
        },

        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

      for _, lsp in ipairs(servers) do
        local lsp_settings = {
          on_attach = on_attach,
          capabilities = capabilities
        }

        if (extra_lsp_settings[lsp] ~= null) then
          for key, value in pairs(extra_lsp_settings[lsp]) do
            lsp_settings[key] = value
          end
        end
        nvim_lsp[lsp].setup(lsp_settings)
      end

      ts.setup({
        ensure_installed = "all",
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        folding = {
          enable = true,
        },
      })
    end
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },

    config = function()
      require("typescript-tools").setup({
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
        },
        settings = {
          tsserver_plugins = {
            "@vue/typescript-plugin",
          },
          separate_diagnostic_server = true,
          publish_diagnostic_on = "insert_leave",
        },
      })
    end,
  }
}

