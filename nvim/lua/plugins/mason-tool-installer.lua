return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"luacheck",
				"stylua",
			},
			auto_update = true,
			run_on_start = true,
		})
	end,
}
