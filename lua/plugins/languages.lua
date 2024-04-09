return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		ensure_installed = {"stylua"},
	},
	{ "neovim/nvim-lspconfig" },
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local lspconfig = require("lspconfig")
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
			})
			require("mason-lspconfig").setup_handlers({
				function(server)
					lspconfig[server].setup({})
				end,
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		name = "null-ls",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({

				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.completion.spell,
					null_ls.builtins.formatting.prettier
				},
			})
		end,
	},
}
