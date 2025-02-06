vim.o.termguicolors = true

return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    -- you can do it like this with a config function
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "light",
          percentage = 0.6, -- percentage of the shade to apply to the inactive window
        },
        color_overrides = {
          mocha = {
            base = "#352939",
            mantle = "#211924",
            crust = "#1a1016",
            text = "#F4CDE9",
            subtext1 = "#DEBAD4",
            subtext0 = "#C8A6BE",
            overlay2 = "#B293A8",
            overlay1 = "#9C7F92",
            overlay0 = "#866C7D",
            surface2 = "#705867",
            surface1 = "#866C7D",
            surface0 = "#44313B",
          },
        },
      })
    end,
    -- or just use opts table
    opts = {
      integrations = {
        blink_cmp = true,
        diffview = true,
        harpoon = true,
        snacks = true,
      },
      -- configurations
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
