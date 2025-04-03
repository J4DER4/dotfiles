--BASIC UTILITY
vim.keymap.set("n", "<C-j>", "5j", { noremap = true, silent = true }) -- move quickly up and down
vim.keymap.set("n", "<C-k>", "5k", { noremap = true, silent = true })

vim.keymap.set("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true, silent = true }) -- allow movement over soft wrapped lines
vim.keymap.set("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true, silent = true })

vim.keymap.set("n", "<leader>u", ":redo<CR>", { silent = false }, { description = "Redo latest change" }) --fast reverse undo (redo)

vim.keymap.set("n", "<Esc>", ":noh<CR>", { silent = true }, { description = "Remove highlight" }) -- remove highligt

vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { noremap = true, silent = true }) --Grab line and move it VISUALMODE
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<enter>", "o<esc>", { desc = "fast insert line" })
vim.keymap.set("n", "<bs>", "I<bs><esc>", { desc = "fast remove line" })
vim.keymap.set("n", "<leader><Tab>", "I<Tab><Esc>", { silent = true }, { description = "Insert Tab" }) --fast insert tabI

-- TROUBLE
vim.keymap.set( -- toggle trouble
	"n",
	"<leader>d",
	"<cmd>Trouble diagnostics toggle focus=true<cr>",
	{ desc = "toggle trouble diagnostics" }
)

--TELESCOPE
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>")

-- COKELINE
local map = vim.api.nvim_set_keymap
map("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
vim.keymap.set("n", "<M-d>", ":bd<Cr>", { silent = true })
for i = 1, 9 do
	map("n", "<M-" .. i .. ">", "<Plug>(cokeline-focus-" .. i .. ")", { silent = true })
end

-- YAZI
vim.keymap.set("n", "<leader>yy", "<cmd>Yazi<CR>", { desc = "Open Yazi" })
