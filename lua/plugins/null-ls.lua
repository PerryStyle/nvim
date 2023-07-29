return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        { "jay-babu/mason-null-ls.nvim",
            opts = {
                ensure_installed = {
                    "stylelua",
                    "flake8",
                },
            },
        },
    },
    opts = function()
        local nls = require("null-ls")
        return {
            sources = {
                nls.builtins.formatting.stylua,
                nls.builtins.diagnostics.flake8,
            },
        }
    end,
}
