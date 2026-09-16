return {
	-- 1. ML4W System Colors (Modern Neopywal)
	{
		"RedsXDD/neopywal.nvim",
		name = "neopywal",
		lazy = false,
		priority = 1000,
		config = function()
			require("neopywal").setup({
				transparent_background = true,
				custom_highlights = {},
			})
			-- This is the ONLY place vim.cmd.colorscheme should be called
			--vim.cmd.colorscheme("neopywal")
		end,
	},

	-- 2. Catppuccin Mocha
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- 3. Tokyo Night (Fallback)
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 900,
		opts = {
			style = "moon",
		},
	},

	-- 4. Kanagawa (Fallback)
	{
		"rebelot/kanagawa.nvim",
		priority = 900,
		opts = {},
	},

	-- 5. Rose Pine (Fallback)
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 900,
		opts = {},
	},
}
