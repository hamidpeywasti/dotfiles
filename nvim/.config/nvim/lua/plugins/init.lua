return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
    lazy = false,
  },

  { 
    "mistricky/codesnap.nvim", 
    build = "make",
    lazy = true,
    keys = {
      { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
      { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
    },
    opts = {
      save_path = "~/Pictures",
      has_breadcrumbs = true,
      bg_theme = "bamboo",
      watermark = "Hamid Peywasti",
      -- bg_padding = 0,
    },
  },
  
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false, -- Load immediately for seamless navigation
  },

  { import = "nvchad.blink.lazyspec" },

  -- Using lazy.nvim
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
