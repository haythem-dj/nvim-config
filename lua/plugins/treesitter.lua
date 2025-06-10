return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"cpp",
				"python",
				"lua",
				"vim",
				"javascript",
				"typescript",
				"tsx",
				"markdown",
				"markdown_inline",
				"html",
				"css",
			},
			highlight = { enable = true },
			autotag = { enable = true },
			indent = { enable = true },
		})
	end,
}
