return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    diagnostics = {
      virtual_text = false,
    },
    settings = {
      python = {

        -- Always use the current python in accordance with $PATH (the current conda/virtualenv).
        pythonPath = vim.fn.exepath("python3"),

        -- or set venvPath instead
        -- venvPath = ...
      },
    },
  },
}
