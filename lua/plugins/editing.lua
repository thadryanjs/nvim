return {
  { 'tpope/vim-repeat' },
  { 'tpope/vim-surround' },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
      require('nvim-autopairs').remove_rule('`')
    end
  },
  -- commenting with e.g. `gcc` or `gcip`
  -- respects TS, so it works in quarto documents
  {
    'numToStr/Comment.nvim',
    version = nil,
    branch = 'master',
    config = true, -- default settings
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true
  },
  {
    "chrishrb/gx.nvim",
    event = { "BufEnter" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true, -- default settings
  },
  { "AckslD/nvim-neoclip.lua",
  requires = {
    {'kkharji/sqlite.lua', module = 'sqlite'},
    -- you'll need at least one of these
    {'nvim-telescope/telescope.nvim'},
    {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup()
  end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim"
    },
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {
            side_by_side = true,
            layout_strategy = "vertical",
            layout_config = {
              preview_height = 0.8,
            },
          },
        },
      })
      require("telescope").load_extension("undo")
      -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end,
  },

}
