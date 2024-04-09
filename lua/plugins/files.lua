return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			'nvim-lua/plenary.nvim',
			'jonarrien/telescope-cmdline.nvim',
		},
		keys = {
			{ ':', '<cmd>Telescope cmdline<cr>', desc = 'Cmdline' }
		},
		opts = {
			extensions = {
			}
		},
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension('cmdline')
		end,
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build =
		'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
	},
}
