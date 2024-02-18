return {

    "neovim/nvim-lspconfig",
    dependencies = {
        {'williamboamn/mason.nvim'},
        {'williamboamn/mason-lspconfig.nvim'},
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    },
    config = function ()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                lsp_zero.default_setup,
            },
        })

        local lsp_configurations = require('lspconfig.configs')

        if not lsp_configurations.gembase then
            lsp_configurations.gembase = {
                default_config = {
                    name = 'gembase',
                    cmd = {'node C:/users/user/documents/carlesfito/projects/gembase-lsp/gembase_lsp.js'},
                    filetypes = {'dml', 'gembase'},
                    root_dir = require('lspconfig.util').root_pattern('*.dml')
                }
            }
        end

        require('lspconfig').gembase.setup({})
    end
}
