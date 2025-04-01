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
