return {
	{
		-- 1. catppuccin
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha", --latte, frappe, macchiat, mocha
		},
		configure = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
		end,

		-- 2. Tokyonight (Storm, Night, Day, Moon)
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = { style = "moon" },
		},

		--3. Kanagawa.
		{
			"rebelot/kanagawa.nvim",
			priority = 1000,
			opts = {},
		},

		-- 4. Rose-Pine
		{
			"rose-pine/neovim",
			name = "rose-pine",
			priority = 1000,
			opts = {},
		},

		-- 5. Active theme leader
		{
			"LazyVim/LazyVim",
			opts = {
				colorscheme = "tokyonight",
			},
		},
	},
}
