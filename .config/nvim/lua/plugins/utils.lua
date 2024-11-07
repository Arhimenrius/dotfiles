return {
  "christianrondeau/vim-base64",
  "mattn/emmet-vim",
  "jannis-baum/vivify.vim",
  {
    -- brackets auto pairing
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.comment").setup()
      require("mini.cursorword").setup()
    end
  },
  -- html tags pairing
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  -- Git
  "tpope/vim-fugitive"
}
