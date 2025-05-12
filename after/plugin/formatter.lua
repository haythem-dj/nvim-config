local util = require("formatter.util")

-- Setup formatter
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		-- Lua
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		-- Python
		python = {
			require("formatter.filetypes.python").black,
		},

		-- C
		c = {
			function()
				return {
					exe = "astyle",
					args = {
                        "--style=allman",
                        "--indent=spaces=4",
                        "--indent-namespaces",
                        "--pad-header",
                        "--unpad-paren",
                        "--add-braces",
                        "--suffix=none",
					},
					stdin = true,
				}
			end,
		},

		-- C++
		cpp = {
			function()
				return {
					exe = "astyle",
					args = {
                        "--style=allman",
                        "--indent=spaces=4",
                        "--indent-namespaces",
                        "--pad-header",
                        "--unpad-paren",
                        "--add-braces",
                        "--suffix=none",
					},
					stdin = true,
				}
			end,
		},

		-- HTML
		html = {
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--tab-width",
						"4",
					},
					stdin = true,
				}
			end,
		},

		-- CSS
		css = {
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--tab-width",
						"4",
					},
					stdin = true,
				}
			end,
		},

		-- JavaScript
		javascript = {
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--tab-width",
						"4",
					},
					stdin = true,
				}
			end,
		},

		-- Catch-all for removing trailing whitespace
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
