local function set_transparent_bg()
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  -- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
end

-- Initial call
set_transparent_bg()

-- Reapply on ColorScheme change
vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = set_transparent_bg,
})

-- Reapply on buffer enter and WinEnter (when switching focus or buffer)
vim.api.nvim_create_autocmd({ 'BufEnter', 'WinEnter' }, {
  pattern = '*',
  callback = set_transparent_bg,
})

-- Optional: If you want, reapply after NvimTree opens/closes
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'NvimTree',
  callback = set_transparent_bg,
})
