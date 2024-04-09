return {

		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function()
				local configs = require("nvim-treesitter.configs")

				configs.setup({
					ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go", "nim", "javascript", "html" , "markdown"},
					sync_install = false,
					highlight = { enable = true },
					indent = { enable = true },
				})
			end
		},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		ensure_installed = {"stylua", "prettier"},
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
