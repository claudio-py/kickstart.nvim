-- vim.keymap.set('n', '<leader>n', function()
--     if vim.opt.nu:get() then
-- 	vim.opt.nu = false
-- 	vim.opt.relativenumber = false
--     else
-- 	vim.opt.nu = true
-- 	vim.opt.relativenumber = true
--     end
-- end)
-- vim.opt.relativenumber = true
--
-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true
--
-- vim.opt.termguicolors = true
-- --it enables 24-bit RGB color in the terminals that supports colors
--
-- vim.opt.scrolloff = 8
-- vim.opt.signcolumn = 'yes'
-- vim.opt.isfname:append('@-@')
-- vim.opt.updatetime = 50
vim.opt.colorcolumn = '80'
vim.cmd 'highlight ColorColumn ctermbg=0 guibg=lightgrey'
--
-- -- Use the system clipboard for all yank, delete, change, and put operations
-- vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })

--disables annoying outdated vim C indentation
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'c',
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
