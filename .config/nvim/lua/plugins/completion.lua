return {
  "L3MON4D3/LuaSnip",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  {
    "hrsh7th/nvim-cmp",
    config = function() 
      local cmp = require("cmp")
      cmp.setup({
        select = false,
        preselect = cmp.PreselectMode.None,
        confirmation = {
        completeopt = "menu,menuone,noinsert,noselect",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources(
          {
            { name = "nvim_lsp" },
            { name = "luasnip" },
          }, {
            { name = "buffer" },
          }),
        mapping = {
          ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item()),
          ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item()),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        },
      })
    end
  },
}
