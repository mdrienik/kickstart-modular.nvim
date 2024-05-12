return {
  'akinsho/toggleterm.nvim',
  version = '*',
  -- config = true,
  -- config = function()
  opts = {
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
  },
}
