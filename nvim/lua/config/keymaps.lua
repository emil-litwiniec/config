-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Custom escape
keymap.set("i", "jj", "<ESC>")

-- Last used buffer
keymap.set("n", "<c-m>", ":b#<cr>")
