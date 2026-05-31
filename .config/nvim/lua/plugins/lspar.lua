return {
  'neovim/nvim-lspconfig',
  dependencies = { 'ms-jpq/coq_nvim' },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local on_attach = function(client, bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopts)
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, bufopts)
    end
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = '✖',
          [vim.diagnostic.severity.WARN]  = '⚠',
          [vim.diagnostic.severity.INFO]  = 'ℹ',
          [vim.diagnostic.severity.HINT]  = '➤',
        },
      },
      underline = true,
      update_in_insert = true,
      virtual_text = true,
      float = { source = true, border = 'rounded' },
    })
    vim.lsp.handlers['window/workDoneProgress'] = function() end
    vim.lsp.config('clangd', {
      on_attach = on_attach,
      capabilities = capabilities,
    })
    vim.lsp.config('pylsp', {
      on_attach = on_attach,
      capabilities = capabilities,
    })
    vim.lsp.config('jsonls', {
      on_attach = on_attach,
      capabilities = capabilities,
    })
    vim.lsp.config('lua_ls', {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          diagnostics = { globals = { 'vim' } },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
          },
        },
      },
    })
    vim.lsp.enable({ 'clangd', 'pylsp', 'jsonls', 'lua_ls' })
  end,
}
