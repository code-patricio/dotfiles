vim.g.mapleader = " "

-- Move v selected lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- cursor in place when "J"
vim.keymap.set("n", "J", "mzJ`z")

-- jump file with cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- cursor in midle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- highlight deletion to the void register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to the void register 
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Q deez nuts
vim.keymap.set("n", "Q", "<nop>")

-- C compiler
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")


-- Markdown templates

vim.keymap.set("n", "week", ":-1read $HOME/scripts/snippets/markdown/week.md<CR>jllli")



--]]
