return {
    'ahmedkhalf/project.nvim',
    config = function()
        require('project_nvim').setup({
            detection_methods = { 'pattern', 'lsp' },
            patterns = { '.git', 'Makefile', 'Cargo.toml', 'CMakeLists.txt', 'package.json' },
        })
    end,
}
