return{
  {
    "theprimeagen/harpoon", opts={}
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
