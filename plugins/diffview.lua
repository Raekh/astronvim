return {
  'sindrets/diffview.nvim',
  lazy = false,
  config = function()
    local set = vim.opt -- set options
    set.fillchars = set.fillchars + 'diff:╱'
  end
}
