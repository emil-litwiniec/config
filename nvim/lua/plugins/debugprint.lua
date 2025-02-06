return {
  "andrewferrier/debugprint.nvim",
  lazy = false,
  opts = {
    keymaps = {
      normal = {
        plain_below = "<leader>wp",
        plain_above = "<leader>wP",
        variable_below = "<leader>wv",
        variable_above = "<leader>wV",
        variable_below_alwaysprompt = nil,
        variable_above_alwaysprompt = nil,
        textobj_below = "g?o",
        textobj_above = "g?O",
        toggle_comment_debug_prints = nil,
        delete_debug_prints = nil,
      },
      insert = {
        plain = "<C-G>p",
        variable = "<C-G>v",
      },
      visual = {
        variable_below = "g?v",
        variable_above = "g?V",
      },
    },
    commands = {
      toggle_comment_debug_prints = "ToggleCommentDebugPrints",
      delete_debug_prints = "DeleteDebugPrints",
    },
    -- … Other options
  },

  -- opts = { … },
  version = "*", -- Remove if you DON'T want to use the stable version
}
