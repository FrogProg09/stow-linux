return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = 'Telescope',     -- <-- add this
  keys = {
    { '<Leader>.', '<cmd>Telescope find_files<CR>' },
    { '<Leader>g', '<cmd>Telescope live_grep<CR>' },
  },
  config = function()
    require('telescope').setup()
  end,
}
