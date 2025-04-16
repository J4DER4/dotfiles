return { -- Formatting tool, formats files on save, fixes consistent style with indentation and line breaks.

    enabled = true,
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "williamboman/mason.nvim" },

    config = function()
        local c = require("conform")
        --find more @ https://github.com/stevearc/conform.nvim#formatters
        c.setup({
            formatters_by_ft = { -- IMPORTANT, These also need to be installed trough Mason (Tab 5)!
                lua = { "stylua" },
                asm = { "asmfmt" },
                html = { "prettier" },
                -- cpp = { "clang-format" },
            },
            format_on_save = {
                lsp_format = "never", --use lsp if format is non available

                async = false,
                timeout_ms = 1000,
                quiet = false,
            },
        })
    end,
}
