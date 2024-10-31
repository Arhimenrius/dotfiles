return {
  "christianrondeau/vim-base64",
  "mattn/emmet-vim",
  "jannis-baum/vivify.vim",
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.comment").setup()
      require("mini.cursorword").setup()
    end
  }
}
