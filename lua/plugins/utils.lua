return {
	{
		"echasnovski/mini.notify",
		version = "*",
		config = function()
			local notify = require("mini.notify")
			vim.notify = notify.make_notify({
				ERROR = { duration = 5000 },
				WARN = { duration = 5000 },
				INFO = { duration = 5000 },
			})
			notify.setup()
		end,
	},
	{ "VonHeikemen/fine-cmdline.nvim" },
}
