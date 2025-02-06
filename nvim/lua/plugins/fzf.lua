return {
  "ibhagwan/fzf-lua",
  opts = function()
    local actions = require("fzf-lua.actions")

    return {
      files = {
        formatter = "path.filename_first", -- places file name first
        path_shorten = 4,
      },
      winopts = {
        col = 0.8,
        width = 0.9,
        height = 0.9,
        preview = {
          horizontal = "right:50%",
        },
        files = {},
        actions = {
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
      grep = {
        rg_glob = true, -- enable glob parsing
        glob_flag = "--iglob", -- case insensitive globs
        glob_separator = "%s%-%-", -- query separator pattern (lua): ' --'
        actions = {
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}
