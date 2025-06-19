return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },

  config = function()
    -- Toggle nvim-tree
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

    -- Focus nvim-tree if visible
    vim.keymap.set('n', '<C-h>', function()
      local view = require 'nvim-tree.view'
      if view.is_visible() then
        view.focus()
      end
    end, { noremap = true, silent = true })

    -- Focus editor from nvim-tree
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'NvimTree',
      callback = function()
        vim.keymap.set('n', '<C-l>', '<C-w>l', { buffer = true, noremap = true, silent = true })
      end,
    })

    require('nvim-tree').setup {
      view = {
        width = 30,
        side = 'left',
        preserve_window_proportions = true,
      },
      renderer = {
        group_empty = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
        ignore = false,
      },
    }
  end,
}
