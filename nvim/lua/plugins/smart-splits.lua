return {
  "mrjones2014/smart-splits.nvim",
  keys = function()
    local ss = require("smart-splits")

    return {
      {
        "<leader><leader>h",
        ss.swap_buf_left,
        desc = "Swap buffer left",
      },
      {
        "<leader><leader>l",
        ss.swap_buf_right,
        desc = "Swap buffer right",
      },
      {
        "<leader><leader>k",
        ss.swap_buf_up,
        desc = "Swap buffer up",
      },
      {
        "<leader><leader>j",
        ss.swap_buf_down,
        desc = "Swap buffer down",
      },
      {
        "<leader><leader>r",
        ss.start_resize_mode,
        desc = "Start resized mode",
      },
    }
  end,
  config = function()
    require("smart-splits").setup({
      -- Ignored filetypes (only while resizing)
      ignored_filetypes = {
        "nofile",
        "quickfix",
        "prompt",
      },
      -- Ignored buffer types (only while resizing)
      ignored_buftypes = { "NvimTree" },
      -- the default number of lines/columns to resize by at a time
      default_amount = 3,
      -- whether to wrap to opposite side when cursor is at an edge
      -- e.g. by default, moving left at the left edge will jump
      -- to the rightmost window, and vice versa, same for up/down.
      at_edge = "wrap",
      -- when moving cursor between splits left or right,
      -- place the cursor on the same row of the *screen*
      -- regardless of line numbers. False by default.
      -- Can be overridden via function parameter, see Usage.
      move_cursor_same_row = false,
      -- resize mode options
      resize_mode = {
        -- key to exit persistent resize mode
        quit_key = "q",
        -- keys to use for moving in resize mode
        -- in order of left, down, up' right
        resize_keys = { "h", "j", "k", "l" },
        -- set to true to silence the notifications
        -- when entering/exiting persistent resize mode
        silent = false,
        -- must be functions, they will be executed when
        -- entering or exiting the resize mode
        hooks = {
          on_enter = nil,
          on_leave = nil,
        },
      },
      -- ignore these autocmd events (via :h eventignore) while processing
      -- smart-splits.nvim computations, which involve visiting different
      -- buffers and windows. These events will be ignored during processing,
      -- and un-ignored on completed. This only applies to resize events,
      -- not cursor movement events.
      ignored_events = {
        "BufEnter",
        "WinEnter",
      },
      -- enable or disable the tmux integration
      multiplexer_integration = "tmux",
      -- disable tmux navigation if current tmux pane is zoomed
      disable_multiplexer_nav_when_zoomed = true,
    })
  end,
}
