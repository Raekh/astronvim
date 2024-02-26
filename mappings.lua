-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- disable those pesky mappings
    ["<C-q>"] = false,
    ["<C-s>"] = false,
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["]q"] = { "<cmd>cnext<CR>", desc = "Next quickfix list entry" },
    ["[q"] = { "<cmd>cprev<CR>", desc = "Previous quickfix list entry" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>j"] = { function() require("trevj").format_at_cursor() end, name = 'Inline arguments' },
    ["<leader>l"] = { name = "LSP" },
    ["<leader>lH"] = {
      function()
        local is_enabled = vim.lsp.inlay_hint.is_enabled(0)
        vim.lsp.inlay_hint.enable(0, not is_enabled)
      end,
      desc = "Toggle inlay hints"
    },
    ["<leader>lt"] = { "<cmd>LspRestart<cr>", desc = "Restart LSP" },
    ["<leader>bh"] = { "<cmd>Bdelete hidden<cr>", desc = "Close hidden buffers" },
    ["<leader>bH"] = { "<cmd>Bwipeout hidden<cr>", desc = "Wipeout hidden buffers" },
    ["<leader>rc"] = {
      function()
        for i = 34, 122 do
          local reg_name = string.char(i)
          pcall(vim.fn.setreg, reg_name, '')
        end
        print('All user registers cleared.')
      end
      ,
      desc = 'Clear registers'
    },
    -- ["<leader>N"] = {
    --   name = "Tests"
    -- },
    -- ["<leader>Na"] = {
    --   name = "Api tests"
    -- },
    -- ["<leader>Naw"] = {
    --   function()
    --     require('neotest').run.run({ jestCommand = 'jest -c ./tests/jestApiConfig.ts --watch ' })
    --   end,
    --   desc = "run",
    -- },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    [">"] = { ">gv" },
    ["<"] = { "<gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
