local autocmd = vim.api.nvim_create_autocmd

local function setTextWidth()
  vim.cmd 'setlocal textwidth=80'
  vim.cmd 'setlocal colorcolumn=80'
end

autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.md', '*.tex' },
  callback = setTextWidth,
})
