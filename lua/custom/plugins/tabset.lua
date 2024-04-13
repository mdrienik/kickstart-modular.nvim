return {
  {
    'FotiadisM/tabset.nvim',
    config = function()
      require('tabset').setup {
        defaults = {
          tabwidth = 2,
          expandtab = true,
        },
        languages = {
          python = {
            tabwidth = 4,
            expandtab = true,
          },
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
