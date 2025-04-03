return {
	"mfussenegger/nvim-lint",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"emilienlemaire/clang-tidy.nvim",
	},
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		require("clang-tidy")

		lint.linters_by_ft = {
			lua = { "luacheck" },
			cpp = { "clangtidy" },
		}
		-- lint.linters.clangtidy = {
		-- 	cmd = "clang-tidy",
		-- }
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
