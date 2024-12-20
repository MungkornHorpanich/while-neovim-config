return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- Import mason and other necessary modules
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- Setup mason with custom icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- Ensure LSP servers are installed via mason-lspconfig
		mason_lspconfig.setup({
			ensure_installed = {
				-- Updated LSP names (no longer using deprecated tsserver)
				"ts_ls", -- Use ts_ls for TypeScript
				"html", -- HTML LSP
				"cssls", -- CSS LSP
				"tailwindcss", -- Tailwind CSS LSP
				"svelte", -- Svelte LSP
				"lua_ls", -- Lua LSP
				"graphql", -- GraphQL LSP
				"emmet_ls", -- Emmet LSP
				"prismals", -- Prisma LSP
				"pyright", -- Python LSP
			},
			-- Enable automatic installation of LSP servers configured in lspconfig
			automatic_installation = true, -- This ensures auto-installation of any missing LSP servers
		})

		-- Ensure additional tools are installed using mason-tool-installer
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- Prettier formatter for JS/TS/HTML
				"stylua", -- Lua formatter
				"isort", -- Python code sorter
				"black", -- Python formatter
				"pylint", -- Python linter
				"eslint_d", -- JS linter (with support for async linting)
			},
		})
	end,
}
