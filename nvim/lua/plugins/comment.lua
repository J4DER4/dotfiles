return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function()
        require("Comment").setup({
            ignore = "^$",
            toggler = {
                line = "<leader>c",
                block = "<leader>b",
            },
        })
    end,
}
