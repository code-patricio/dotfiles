require("code-patricio.set")
require("code-patricio.remap")
require("code-patricio.abbrev")

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- If you have an init.lua
vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set awa"})
-- Use the following if your buffer is set to become hidden
--vim.api.nvim_create_autocmd("BufLeave", {pattern = "*.md", command = "silent! wall"})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
