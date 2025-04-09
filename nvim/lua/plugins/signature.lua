return {
    enabled = true,

    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    config = function()
        local signature = require("lsp_signature")

        signature.setup({
            bind = true,
            handler_opts = {
                border = "double",
            },
            hint_prefix = "󰫢  ",
            toggle_key = "<C-.>",
            toggle_key_flip_floatwin_setting = true,
        })
    end,
}

-- requires emojis (yes to display correctly)
-- install from aur: ttf-joypixels

-- no extra config needed:
