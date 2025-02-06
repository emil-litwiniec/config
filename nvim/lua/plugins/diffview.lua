return {
  "sindrets/diffview.nvim",
  lazy = false,
  keys = {
    {
      ";v",
      function()
        if next(require("diffview.lib").views) == nil then
          vim.cmd("DiffviewOpen")
        else
          vim.cmd("DiffviewClose")
        end
      end,
      desc = "Diffview Toggle",
    },
    {
      ";V",
      function()
        if next(require("diffview.lib").views) == nil then
          vim.cmd("DiffviewFileHistory %")
        else
          vim.cmd("DiffviewClose")
        end
      end,
      desc = "DiffviewFileHistory Toggle",
    },
  },
}
