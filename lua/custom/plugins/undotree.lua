return {
  {
    'mbbill/undotree',

    -- setup F5 to display the Undo tree
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
  },
}
