return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_contrast = "hard"
			vim.g.gruvbox_material_transparent_background = 2
			vim.g.gruvbox_material_better_performance = 1
		end,
	},
}
