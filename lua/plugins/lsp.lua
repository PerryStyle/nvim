return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "lua_ls",
                    "bashls",
                    "cmake",
                },
            },
        },
        { "folke/neoconf.nvim", cmd = "Neoconf", opts = {}, },
    },
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.pyright.setup {}
        lspconfig.lua_ls.setup {}
        lspconfig.clangd.setup {}
        lspconfig.cmake.setup {
            filetypes = { "cmake", "CMakeLists.txt", }
        }
        lspconfig.bashls.setup {}
    end,
}
