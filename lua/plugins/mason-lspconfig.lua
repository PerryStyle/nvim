return {
    "williamboman/mason-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
    },
    opts = {
        ensure_installed = {
            "clangd",
            "pyright",
            "lua_ls",
            "bashls",
            "cmake",
        },
    },
}
