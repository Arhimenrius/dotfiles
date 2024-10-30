local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- [Navigation]
	"nvim-tree/nvim-tree.lua",

	-- [Other needed]
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",

	-- [Fuzzy Search] 
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-fzy-native.nvim",
			"nvim-telescope/telescope-media-files.nvim",
		},
	},
	
	-- [Treesitter]
	{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	},
	 "nvim-treesitter/nvim-treesitter-context",

	-- [LSP]
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvimtools/none-ls.nvim",
	"jay-babu/mason-null-ls.nvim",

	-- [Completion]
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",

	-- [Recommended]
	{
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!).
	  build = "make install_jsregexp"
  },
  "lewis6991/gitsigns.nvim",
	"nvim-lualine/lualine.nvim",
	"norcalli/nvim-colorizer.lua",
	"xiantang/darcula-dark.nvim", -- darcula theme
	{
    "numToStr/Comment.nvim",
    opts = {
        -- add any options here
    },
    lazy = false,
	},

	-- [Utils]
	"iamcco/mathjax-support-for-mkdp",
	"christianrondeau/vim-base64",
	"mattn/emmet-vim",
	"jannis-baum/vivify.vim",
})


