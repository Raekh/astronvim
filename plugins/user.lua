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
  "tanvirtin/monokai.nvim",
  "folke/tokyonight.nvim",
  "tpope/vim-endwise",
  { "tpope/vim-abolish",  event = "BufRead" },
  {
    "kylechui/nvim-surround",
    lazy = false,
    opts = true,
  },
  { "wellle/targets.vim", event = "BufRead" },
  "jose-elias-alvarez/typescript.nvim",
  {
    "AckslD/nvim-trevJ.lua",
    event = "BufRead",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    ft = 'markdown'
  },
  {
    'joerdav/floobits-neovim',
  }
  -- {
  --   'lvimuser/lsp-inlayhints.nvim',
  --   config = function()
  --     vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
  --     vim.api.nvim_create_autocmd("LspAttach", {
  --       group = "LspAttach_inlayhints",
  --       callback = function(args)
  --         if not (args.data and args.data.client_id) then
  --           return
  --         end
  --
  --         local bufnr = args.buf
  --         local client = vim.lsp.get_client_by_id(args.data.client_id)
  --         require("lsp-inlayhints").on_attach(client, bufnr)
  --       end,
  --     })
  --   end
  -- }
}
