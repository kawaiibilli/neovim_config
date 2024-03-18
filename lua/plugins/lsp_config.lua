return
    {
        {
            "williamboman/mason.nvim",
            config = function()
                require("mason").setup()
            end
        },
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = { "lua_ls", "jedi_language_server", "pyre", "clangd" }
                })
            end
        },
        {
            "neovim/nvim-lspconfig",
            config = function()
                local capabilities = require('cmp_nvim_lsp').default_capabilities()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup({
                    capabilities = capabilities
                })
                lspconfig.jedi_language_server.setup({
                    capabilities = capabilities
                })
                lspconfig.pyre.setup({
                    capabilities = capabilities })
                lspconfig.clangd.setup({
                    capabilities = capabilities
                })
                vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
                vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
                vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            end
        }
    }
