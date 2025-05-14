vim.keymap.set("n", "<leader>fe", ":Ex<CR>")

vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<S-Down>", ":m .+1<CR>==")
vim.keymap.set("n", "<S-Up>", ":m .-2<CR>==")

vim.keymap.set("x", "p", '"_dp')

vim.keymap.set("n", "<leader><Up>", "<C-w>k")
vim.keymap.set("n", "<leader><Down>", "<C-w>j")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")

vim.keymap.set("n", "<leader>s", ":split<CR>")
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")

vim.keymap.set("n", "<leader>ff", ":Format<CR>")
vim.keymap.set("n", "<leader>d", "Yp")
vim.keymap.set("n", "<leader>D", "Ykp")

vim.keymap.set("n", "<leader>a", "ggVG")
