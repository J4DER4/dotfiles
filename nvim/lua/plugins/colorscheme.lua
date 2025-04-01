return {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    lazy = false,
    config = function()
	    require('cyberdream').setup({
		transparent = true,
		hide_fillchars = false,
	    })
	    vim.cmd([[colorscheme cyberdream]])
    end,
}	

