local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "plugins.configs.lspconfig"
            require "custom.config.lspconfig"
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "clangd",
                "pyright",
            },
        },
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end,
    },
    {
        "saecki/crates.nvim",
        ft = {"rust", "toml"},
        dependencies = "hrsh7th/nvim-cmp",
        config = function (_, opts)
            local crates = require('crates')
            crates.setup(opts)
            crates.show()
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function ()
            local M = require "plugins.configs.cmp"
            table.insert(M.sources, {name = "crates"})
            return M
        end,
    },
    {
        "lervag/vimtex",
        lazy = false,
        config = function ()
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_compiler_method = "latexmk"
        end,
    },
}
return plugins
