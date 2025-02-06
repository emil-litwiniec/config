return {
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
    {
      "<leader>gg",
      function()
        vim.cmd(":G")
      end,
      desc = "Git status",
    },
  },
}
