local servers = {
	"gopls",
	"golangci_lint_ls",
	"ts_ls",
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
--	"htmx",
	"postgres_lsp",
	"pyright",
}

local nvim_lsp = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local ts = require("nvim-treesitter.configs")

require("mason").setup()
require("mason-lspconfig").setup({
	automatic_installation = true,
})

require("mason-null-ls").setup({
	ensure_installed = { "jq", "prettierd", "prettier", "eslint_d", "gofumpt", "golines", "phpcsfixer" }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities
	})
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
