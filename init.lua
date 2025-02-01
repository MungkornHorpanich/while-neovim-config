require("while.core")
require("while.lazy")

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.cmd("highlight LineNr guibg=NONE")
	end,
})

vim.cmd("colorscheme rose-pine-main")
