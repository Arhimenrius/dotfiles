return {
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  "hrsh7th/cmp-cmdline",
  "dmitmel/cmp-cmdline-history",
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
            { name = "nvim_lsp", max_item_count = 20, priority_weight = 100 },
            { name = "nvim_lua", priority_weight = 90 },
            { name = "luasnip", priority_weight = 80 },
            {
              name = "buffer",
              max_item_count = 5,
              priority_weight = 50,
              entry_filter = function(entry)
                return not entry.exact
              end,
            },
          }),
        mapping = {
          ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item()),
          ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item()),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-Down>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
          ["<C-Up>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        },
        sorting = {
          priority_weight = 100,
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            cmp.config.compare.locality,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
      })
    end
  },
}
