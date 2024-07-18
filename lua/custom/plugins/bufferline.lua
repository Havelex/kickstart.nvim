vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', ':BufferLinePick<CR>', { noremap = true, silent = true, desc = 'Pick Buffer' })
vim.keymap.set('n', '<leader>bb', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Close current Buffer' })

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  config = function()
    require('bufferline').setup {
      options = {
        seperator_style = 'thick',
        diagnostics = 'nvim_lsp',
      },
    }
  end,
}
