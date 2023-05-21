-- My *Basic* plugins for Termux Env 

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
   
    use { "catppuccin/nvim", as = "catppuccin" }

	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	use {'mbbill/undotree'}

	use({'jakewvincent/mkdnflow.nvim'})


--[[ 
-- Not Lsp Zero
    use{"williamboman/mason.nvim", run = ":MasonUpdate" }
    use{"williamboman/mason-lspconfig.nvim"}
    use{"neovim/nvim-lspconfig}
--]]

end)
