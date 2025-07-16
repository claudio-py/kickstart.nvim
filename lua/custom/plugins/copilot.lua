return {
  -- GitHub Copilot main plugin
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = false,
          debounce = 75,
          keymap = {
            accept = '<M-L>',
            next = '<M-]>',
            prev = '<M-[>',
            accept_line = '<C-l>',
            accept_word = '<M-l>',
          },
        },
        panel = { enabled = true },
      }
    end,
  },
}
