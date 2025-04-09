vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {}),
    desc = "Hightlight selection on yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
    end,
})

vim.diagnostic.config({ -- displays on errors on screen, sources from lsp and lint
    severity_sort = true,
    update_in_insert = false,

    virtual_text = {
        spacing = 4, -- Space between text and code
        style = "minimal",
        prefix = "", -- Custom prefix (e.g., "●", "", "x")
        format = function(diagnostic)
            return string.format("%s", diagnostic.message)
        end,
    },
})

require("editorconfig")

-- Popup menu colors (vibrant dark magenta + green)
vim.cmd("highlight Pmenu      guifg=#ffffff guibg=#1e2124") -- White text, dark bg
vim.cmd("highlight PmenuSel   guifg=#ffffff guibg=#8a2f8a gui=bold") -- Dark magenta selection
vim.cmd("highlight PmenuSbar  guibg=#3c4048") -- Scrollbar track (neutral dark)
vim.cmd("highlight PmenuThumb guibg=#5eff6c") -- Vibrant green thumb
