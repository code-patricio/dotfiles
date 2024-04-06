vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {
        "jakewvincent/mkdnflow.nvim",
        config = function()
		require('mkdnflow').setup({
			-- Config goes here; leave blank for defaults
		perspective = {
			priority = 'root',
				root_tell = 'index.md',
				fallback = 'current'
			},

			links = {
				transform_explicit = function(text)
					text = text:gsub(" ", "-")
					text = text:lower()
					return(text)
				end
			},



		})
        end,
    },

	"tpope/vim-fugitive",

	"nvim-lua/plenary.nvim",

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	{
		"titanzero/zephyrium",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme zephyrium]])
		end,
	},
})

require("mason").setup()
require("mason-lspconfig").setup()

-- ###################
-- ## remap options ##
-- ###################


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

-- yank to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Q deez nuts
vim.keymap.set("n", "Q", "<nop>")

-- Markdown templates

vim.keymap.set("n", "week", ":-1read $HOME/scripts/snippets/markdown/week.md<CR>jllli")

-- #################
-- ## set options ##
-- #################

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.completeopt = "menuone,noselect"

vim.opt.colorcolumn = "80"


-- If you have an init.lua
vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set awa"})
-- Use the following if your buffer is set to become hidden
--vim.api.nvim_create_autocmd("BufLeave", {pattern = "*.md", command = "silent! wall"})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- ####################
-- ## abbrev options ##
-- ####################

vim.cmd[[autocmd FileType markdown iabbrev mddate <C-r>=strftime('%y%m%d-%H%M')<CR>]]
vim.cmd[[autocmd FileType markdown iabbrev date <C-r>=strftime('%y/%m/%d')<CR>]]
