-- My *Basic* plugins

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
   
    use { "catppuccin/nvim", as = "catppuccin" }

    use({'jakewvincent/mkdnflow.nvim'})

	use {'mbbill/undotree'}

--    use {'nvim-treesitter/nvim-treesitter'}
            
--    use {'jbyuki/venn.nvim'}

--    use {'mipmip/vim-scimark'}

--    use {'theprimeagen/vim-be-good'}

--[[ 
-- Not Lsp Zero
    use{"williamboman/mason.nvim", run = ":MasonUpdate" }
    use{"williamboman/mason-lspconfig.nvim"}
    use{"neovim/nvim-lspconfig}
--]]

end)
