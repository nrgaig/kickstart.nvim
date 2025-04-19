-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

-- yank and paste from system clipboard
set({ "n", "v" }, "<Leader>y", '"+y', { desc = "yank to system clipboard" })
set({ "n", "v" }, "<Leader>Y", '"+Y', { desc = "yank to system clipboard" })
set({ "n", "v" }, "<Leader>p", '"+p', { desc = "paste from system clipboard" })
set({ "n", "v" }, "<Leader>P", '"+P', { desc = "paste from system clipboard" })

del({ "n", "x" }, "j")
del({ "n", "x" }, "<Down>")
del({ "n", "x" }, "k")
del({ "n", "x" }, "<Up>")
del("n", "<C-h>")
del("n", "<C-j>")
del("n", "<C-k>")
del("n", "<C-l>")
