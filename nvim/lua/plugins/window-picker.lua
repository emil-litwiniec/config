return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  version = "2.*",
  config = function()
    require("window-picker").setup({
      other_win_hl_color = "#5E81AC",
      hint = "floating-big-letter",
      show_prompt = false,
    })
  end,
  keys = function()
    local picker = require("window-picker")

    return {
      {
        "<leader>ww",
        function()
          local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
          vim.api.nvim_set_current_win(picked_window_id)
        end,
        desc = "Pick a window",
      },
    }
  end,
}
