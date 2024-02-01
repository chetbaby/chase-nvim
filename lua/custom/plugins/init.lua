-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  "folke/lsp-colors.nvim",
  "Yggdroot/indentLine",
  "HiPhish/nvim-ts-rainbow2",
  "catppuccin/nvim",
  "romainl/vim-qf",
  "alvan/vim-closetag",
  "alvan/vim-closetag",
  "AndrewRadev/tagalong.vim",
  "jiangmiao/auto-pairs",
  "Valloric/MatchTagAlways",
  "JoosepAlviste/nvim-ts-context-commentstring", --for jsx comments
  "tpope/vim-surround",
  'sbdchd/neoformat',
  'nvim-treesitter/nvim-treesitter-context',
  'mustache/vim-mustache-handlebars',
  --[[ { ]]
  --[[   "neoclide/coc.nvim", ]]
  --[[   lazy = false, ]]
  --[[   branch = "release", ]]
  --[[   config = function() ]]
  --[[     require("config/coc") ]]
  --[[   end, ]]
  --[[ }, ]]
  -- nvim v0.8.0
  {
    'morhetz/gruvbox',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'ThePrimeagen/git-worktree.nvim',
    config = function()
      require("config/worktree")
    end,

  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    --[[ dependencies = { "nvim-tree/nvim-web-devicons" }, ]]
    config = function()
      require("oil").setup()
    end,
  },
  {
    "jose-elias-alvarez/typescript.nvim",
    config = function()
      require("config/typescript")
    end,
  },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   config = function()
  --     require("config/symbols-outline")
  --   end,
  -- },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require("config/fzf-lua")
    end,
  },
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      require("config/statuscol")
    end,
  },
  {
    "akinsho/nvim-toggleterm.lua",
    tag = "v2.*",
    keys = { "<C-y>", "<leader>fl", "<leader>gt" },
    config = function()
      require("config/toggleterm")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("config/comment")
    end,
  },
  {
    "qpkorr/vim-bufkill",
    config = function()
      require("config/bufkill")
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require("config/ufo")
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require("config/trouble")
    end,
  },
  {
    "rcarriga/nvim-notify", -- don't know how to use this
    config = function()
      require("config/notify")
    end,
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config/harpoon")
    end,
  },
  {
    "akinsho/nvim-bufferline.lua",
    tag = "v2.*",
    dependencies = "kyazdani42/nvim-web-devicons",
    event = "BufReadPre",
    config = function()
      require("config/bufferline")
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("config/nvim-tree")
    end,
  },
  {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end
  },
}
