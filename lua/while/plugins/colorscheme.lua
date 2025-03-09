function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
	vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
			vim.cmd("colorscheme tokyonight-night")
		end,
	},

	{
		"catppuccin/nvim",
	},

	{
		"phha/zenburn.nvim",
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
				},
			})
		end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_contrast = "hard"
			vim.g.gruvbox_material_transparent_background = 2
			vim.g.gruvbox_material_better_performance = 1
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
				contrast = "hard",
			})
		end,
	},
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({ options = {} })
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
	},

	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false,
		priority = 1000,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			-- Default options:
			-- require("kanagawa").setup({
			-- 	transparent = true, -- do not set background color
			-- 	colors = {
			-- 		theme = { all = { ui = { bg_gutter = "none" } } },
			-- 	},
			-- })
			ColorMyPencils()
		end,
	},
}
