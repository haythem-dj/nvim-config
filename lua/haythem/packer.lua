vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("tpope/vim-fugitive")

	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/cmp-nvim-lsp" })

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer", -- Completion from buffer
			"hrsh7th/cmp-path", -- Completion from filesystem paths
			"hrsh7th/cmp-cmdline", -- Completion in command line
			"L3MON4D3/LuaSnip", -- Snippets engine
			"saadparwaiz1/cmp_luasnip", -- Snippet completions
		},
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({ "mhartington/formatter.nvim" })

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = { "markdown" },
		config = function()
			vim.g.mkdp_auto_start = 1
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_refresh_slow = 0
			vim.g.mkdp_command_for_global = 0
			vim.g.mkdp_open_to_the_world = 0
			vim.g.mkdp_browser = "" -- Use default browser
		end,
	})

	-- Better Markdown Editing
	use({
		"preservim/vim-markdown",
		ft = { "markdown" },
		config = function()
			vim.g.vim_markdown_folding_disabled = 1
			vim.g.vim_markdown_conceal = 0
			vim.g.vim_markdown_conceal_code_blocks = 0
			vim.g.vim_markdown_strikethrough = 1
			vim.g.vim_markdown_autowrite = 1
		end,
	})

	-- Table Editing in Markdown
	use({
		"dhruvasagar/vim-table-mode",
		ft = { "markdown" },
		config = function()
			vim.g.table_mode_corner = "|"
		end,
	})

	use({
		"lervag/vimtex",
		ft = "tex", -- Lazy-load only for .tex files
		config = function()
			-- Vimtex Lua configuration
			vim.g.vimtex_view_method = "zathura" -- PDF viewer (Linux)
			-- For Windows (SumatraPDF):
			-- vim.g.vimtex_view_method = 'sumatrapdf'
			-- vim.g.vimtex_view_general_viewer = 'SumatraPDF.exe'
			-- vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

			vim.g.vimtex_compiler_method = "latexmk" -- Default compiler
			vim.g.tex_flavor = "latex" -- Default tex filetype
			vim.g.vimtex_quickfix_mode = 0 -- Disable auto-open quickfix

			-- Optional: Enable conceal for LaTeX symbols (e.g., \alpha → α)
			vim.g.vimtex_syntax_conceal = {
				accents = 1,
				cites = 1,
				fancy = 1,
				greek = 1,
				math_bounds = 1,
				math_delimiters = 1,
				math_fracs = 1,
				math_super_sub = 1,
				math_symbols = 1,
				sections = 0,
				styles = 1,
			}
		end,
	})

	use("bluz71/vim-moonfly-colors")
	use("bluz71/vim-nightfly-colors")

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup({
				size = 15,
				open_mapping = [[<C-t>]],
				direction = "horizontal",
			})
		end,
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
end)
