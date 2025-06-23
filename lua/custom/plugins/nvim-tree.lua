return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },

  config = function()
    -- Toggle nvim-tree
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

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
