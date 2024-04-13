return {
  {
    'mbbill/undotree',

    -- setup F5 to display the Undo tree
    vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle),
  },
}
