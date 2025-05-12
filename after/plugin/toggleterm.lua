require("toggleterm").setup({
	size = 15,
	open_mapping = [[<C-t>]],
	direction = "horizontal",
	shade_terminals = true,
})

-- Optional terminal-specific mappings
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
