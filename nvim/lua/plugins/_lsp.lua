return { --:h mason-lspconfig
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		require("mason").setup()
		local lsp = require("mason-lspconfig")
		lsp.setup({
			ensure_installed = {
				--Add here or install trough mason
			},
			automatic_installation = true,
		})
		lsp.setup_handlers({ --automated attach
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		})
	end,
}
