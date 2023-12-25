return{
  {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"},
    opts={},
    init=function ()
      vim.keymap.set("n", "\\a", function() require("harpoon"):list():append() end)
      vim.keymap.set("n", "\\q", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end)

      vim.keymap.set("n", "\\1", function() require("harpoon"):list():select(1) end)
      vim.keymap.set("n", "\\2", function() require("harpoon"):list():select(2) end)
      vim.keymap.set("n", "\\3", function() require("harpoon"):list():select(3) end)
      vim.keymap.set("n", "\\4", function() require("harpoon"):list():select(4) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "\\P", function() require("harpoon"):list():prev() end)
      vim.keymap.set("n", "\\N", function() require("harpoon"):list():next() end)
    end
  },

  {
    'theprimeagen/git-worktree.nvim',
    config=function ()
      require("telescope").load_extension("git_worktree")
      vim.keymap.set('n', '<leader>st', require('telescope').extensions.git_worktree.git_worktrees, { desc = '[S]earch Git Work[t]ree' })
    end,
    opts={},
  },
  {
    'nvim-lua/popup.nvim'
  },
  {"RRethy/vim-illuminate"},
  {
    'echasnovski/mini.nvim', version = '*',
    config=function ()
      require("mini.completion").setup()
      require("mini.pairs").setup()
      require("mini.comment").setup()
      require("mini.surround").setup()
      require("mini.ai").setup()
      require("mini.indentscope").setup()
    end
  },
  {
   "jeffkreeftmeijer/vim-numbertoggle",opt={}
  },
}
