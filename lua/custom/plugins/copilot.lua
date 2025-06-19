return {
  -- GitHub Copilot main plugin
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<M-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
	    accept_line = "<C-L>",
	    accept_word = "<C-l>",

          },
        },
        panel = { enabled = true },
      })
    end,
  },
}

