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


-- yank and paste with system clipboard
vim.keymap.set({ 'n', 'v' }, '<Leader>y', [["+y]], { desc = "Yank into system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<Leader>Y', [["+Y]], { desc = "Yank to end of line into system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<Leader>p', [["+p]], { desc = "Paste from system clipboard after cursor" })
vim.keymap.set({ 'n', 'v' }, '<Leader>P', [["+P]], { desc = "Paste from system clipboard before cursor" })

-- move line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- vim: ts=2 sts=2 sw=2 et
