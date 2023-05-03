return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "folke/tokyonight.nvim",
  "tpope/vim-endwise",
  "tpope/vim-abolish",
  {
    "kylechui/nvim-surround",
    lazy = false,
    opts = true
  },
  { 'wellle/targets.vim', event = 'BufRead' }
}
