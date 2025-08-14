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
    {
        "brianaung/compl.nvim",
        opts = {
            completion = {
                fuzzy = false,
                timeout = 100,
            },
            info = {
                enable = true,
                timeout = 100,
            },
            snippet = {
                enable = false,
                paths = {}
            }
        },
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    ["ui"] = {
        {
            "savq/melange-nvim",
            lazy = false,
            priority = 1000,
        },
        {
            "bettervim/yugen.nvim",
            lazy = false,
            priority = 1000,
        },
    },
}
return plugins
