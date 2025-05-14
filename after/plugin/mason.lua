require("mason").setup()

-- Optional: mason-lspconfig helps auto-configure LSPs
require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright", -- for Python/Django
		"ts_ls", -- for React/JS
		"html", -- optional
		"jsonls", -- optional
	},
})

-- Setup with lspconfig
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({})
lspconfig.ts_ls.setup({})
lspconfig.html.setup({})
