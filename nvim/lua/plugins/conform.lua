return { -- Formatting tool, formats files on save, fixes consistent style with indentation and line breaks.

	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "williamboman/mason.nvim" }, -- for auto sync

	config = function()
		local c = require("conform")
		local m = require("mason")
		--find more @ https://github.com/stevearc/conform.nvim#formatters
		c.setup({
			formatters_by_ft = { -- IMPORTANT, These also need to be installed trough Mason (Tab 5)!
				lua = { "stylua" },
				python = { "black" },
				asm = { "asmfmt" },
			},
			format_on_save = {
				lsp_fallback = true, --use lsp if format is non available
				async = false,
				timeout_ms = 1000,
			},
		})
		--auto sync changes with mason CURRENTLY NOT WORKING
		vim.api.nvim_create_autocmd("User", {
			pattern = "MasonUpdateCompleted",
			callback = function()
				local formatters = c.get_formatters()
				for _, formatter in ipairs(formatters) do
					local name = formatter.name
					if not m.api.is_installed(name) then
						vim.notify("Installing formatter: " .. name, vim.log.levels.INFO)
						m.api.install(name)
					end
				end
			end,
		})
	end,
}
