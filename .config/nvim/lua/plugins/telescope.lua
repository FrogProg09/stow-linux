return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = 'Telescope',     -- <-- add this
  keys = {
    { '<Leader>.', '<cmd>Telescope find_files<CR>' },
    { '<Leader>g', '<cmd>Telescope live_grep<CR>' },
    { '<Leader>p', '<cmd>Telescope projects<CR>' },
  },
  config = function()
    require('telescope').setup({
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })
    require('telescope').load_extension('projects')
  end,
}
