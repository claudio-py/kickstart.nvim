vim.keymap.set('n', '<leader>tn', function()
  if not vim.wo.number and not vim.wo.relativenumber then
    -- Off → Absolute
    vim.wo.number = true
    vim.wo.relativenumber = false
  elseif vim.wo.number and not vim.wo.relativenumber then
    -- Absolute → Relative
    vim.wo.number = true
    vim.wo.relativenumber = true
  else
    -- Relative → Off
    vim.wo.number = false
    vim.wo.relativenumber = false
  end
end, { desc = 'numbers' })
----------------------------------------
vim.o.showtabline = 0
vim.keymap.set('n', '<leader>tt', function()
  if vim.o.showtabline == 2 then
    vim.o.showtabline = 0
    vim.notify('Tabline hidden', vim.log.levels.INFO)
  else
    vim.o.showtabline = 2
    vim.notify('Tabline shown', vim.log.levels.INFO)
  end
end, { desc = 'Toggle tabline visibility' })
-------------------------------------------------
vim.keymap.set('n', '<leader>ts', function()
  if vim.o.laststatus == 0 then
    vim.o.laststatus = 2
    vim.notify('Statusline shown', vim.log.levels.INFO)
  else
    vim.o.laststatus = 0
    vim.notify('Statusline hidden', vim.log.levels.INFO)
  end
end, { desc = 'Toggle statusline visibility' })
---
vim.wo.number = false
vim.opt.colorcolumn = '80'
vim.cmd 'highlight ColorColumn ctermbg=0 guibg=lightgrey'
vim.opt.fillchars:append { eob = ' ' }

--disables annoying outdated vim C indentation
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.bo.cindent = false
    vim.bo.smartindent = false
    vim.bo.autoindent = false
    vim.bo.indentexpr = ''
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})
