vim.g.mapleader = " "

-- Move v selected lines

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

--[[

vim.keymap.set("n", "tex", ":-1read $HOME/scripts/latex/test.tex<CR>")



--]]
