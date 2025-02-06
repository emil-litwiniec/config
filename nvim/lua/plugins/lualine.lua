return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.winbar = {
      lualine_a = {
        {
          "filename",
          file_status = true,
          path = 1,
          shorting_target = 0,
        },
      },
    }

    opts.inactive_winbar = {
      lualine_a = {
        {
          "filename",
          file_status = true,
          path = 1,
          shorting_target = 0,
        },
      },
    }

    opts.extensions = { "fugitive" }
  end,
}
