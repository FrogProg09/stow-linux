return {
  'folke/trouble.nvim',
  keys = {
    { '<space>xx', '<cmd>TroubleToggle<CR>' },
    { '<space>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>' },
  },
  config = function()
    require('trouble').setup()
  end,
}
