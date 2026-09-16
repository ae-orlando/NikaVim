return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	cmd = "Neotree",

	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
			hijack_netrw_behavior = "open_default",
		},

		window = {
			width = 30,
		},
	},
}
