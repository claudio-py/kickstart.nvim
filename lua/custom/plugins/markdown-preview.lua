return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && yarn install',
  init = function()
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      maid = {},
      disable_sync_scroll = 0,
      sync_scroll_type = 'middle',
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = false,
      disable_filename = 0,
      toc = {},
    }
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.g.mkdp_theme = 'dark'
    vim.g.mkdp_combine_preview = 0
    vim.g.mkdp_combine_preview_auto_refresh = 1
    function ColorMyPencils()
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
    end
    ColorMyPencils()
  end,
  ft = { 'markdown' },

  config = function()
    -- Key mapping for toggling Markdown preview
    vim.keymap.set('n', '<leader>p', ':MarkdownPreviewToggle<CR>', { desc = 'Toggle Markdown Preview' })
  end,
}
