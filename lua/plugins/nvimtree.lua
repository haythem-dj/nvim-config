local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return {
			desc = "nvim-tree: " .. desc,
			buffer = bufnr,
			noremap = true,
			silent = true,
			nowait = true,
		}
	end

	vim.keymap.set("n", "<leader><CR>", api.node.open.tab, opts("Open in New Tab"))
end

return {
	"nvim-tree/nvim-tree.lua",
	on_attach = my_on_attach,
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
		})
	end,
}
