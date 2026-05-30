return {
  'ms-jpq/coq_nvim',
  dependencies = { 'ms-jpq/coq.artifacts' },
  config = function()
    vim.g.coq_settings = {
      auto_start = 'shut-up',
      display = {
        pum = {
          y_max_len = 8,
          x_max_len = 30,
        },
      },
    }
    require('coq')
  end,
}
