-- LSP Bindings
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)

-- Telescope bindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Neotree filesystem reveal right")
end)
