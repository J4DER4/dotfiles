--remove highlight on escape
vim.keymap.set("n", "<Esc>", ":noh<CR>", { silent = true }, { description = "Remove highlight" })
vim.keymap.set("n", "<leader><Tab>", "I<Tab><Esc>", { silent = true }, { description = "Insert Tab" })

vim.keymap.set("n", "<leader>u", ":redo<CR>", { silent = false }, { description = "Redo latest change" })
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or range (in visual mode)" })
-- Keybind to launch Yazi
vim.keymap.set("n", "<leader>yy", "<cmd>Yazi<CR>", { desc = "Open Yazi" })

vim.keymap.set("n", "<C-j>", "5j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "5k", { noremap = true, silent = true })
-- keys = {
-- 		{
-- 			"gr",
-- 			function()
-- 				require("trouble").toggle("lsp_references")
-- 				require("trouble").focus()
-- 			end,
-- 			desc = "references",
-- 		},
-- 		{
-- 			"<leader>d",
-- 			function()
-- 				require("trouble").toggle("diagnostics")
-- 				require("trouble").focus()
-- 			end,
-- 			desc = "references",
-- 		},
-- 	},
vim.keymap.set(
	"n",
	"<leader>d",
	"<cmd>Trouble diagnostics toggle focus=true<cr>",
	{ desc = "toggle trouble diagnostics" }
)
