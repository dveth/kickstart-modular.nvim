-- Highlight todo, notes, etc in comments
return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
    config = function()
      vim.keymap.set('n', '<leader>todo', ':TodoTelescope keywords=TODO,FIX<cr>')
      require('todo-comments').setup()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
