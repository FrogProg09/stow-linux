return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = { { '<Leader>n', '<Cmd>NvimTreeToggle<CR>' } },
  config = function()
    require('nvim-tree').setup({
        view = {
            width = 30,
            side = 'right',
        }
    })
  end,
}
