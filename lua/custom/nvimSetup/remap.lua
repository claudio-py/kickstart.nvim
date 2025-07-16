-- vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save File' })
-- vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })

--RESIZE panes
vim.keymap.set('n', '<C-Up>', ':resize -5<CR>', { silent = true })
vim.keymap.set('n', '<C-Down>', ':resize +5<CR>', { silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -5<CR>', { silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +5<CR>', { silent = true })

vim.keymap.set('n', '<leader>td', function()
  local bufnr = 0
  local is_disabled = vim.diagnostic.is_disabled(bufnr)
  if is_disabled then
    vim.diagnostic.enable(bufnr)
    vim.notify 'Diagnostics enabled'
  else
    vim.diagnostic.disable(bufnr)
    vim.notify 'Diagnostics disabled'
  end
end, { desc = 'diagnostics' })
