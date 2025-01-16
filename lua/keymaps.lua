-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- yank and paste from system clipboard
vim.keymap.set({ 'n', 'v' }, '<Leader>y', '"+y', { desc = "yank to system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<Leader>Y', '"+Y', { desc = "yank to system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<Leader>p', '"+p', { desc = "paste to system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<Leader>P', '"+P', { desc = "paste to system clipboard" })

print("keymaps.lua loaded")

-- vim: ts=2 sts=2 sw=2 et
