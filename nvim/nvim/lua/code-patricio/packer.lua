-- My *Basic* plugins

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
   
--    use { "catppuccin/nvim", as = "catppuccin" }

--    use {
--        'nvim-treesitter/nvim-treesitter',
--        run = function()
--            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
--            ts_update()
--        end,
--    }

	use {'mbbill/undotree'}

	use({'jakewvincent/mkdnflow.nvim'})
    
--    use {'theprimeagen/vim-be-good'}

    use {'jbyuki/venn.nvim'}

--[[ 
-- Not Lsp Zero
    use{"williamboman/mason.nvim", run = ":MasonUpdate" }
    use{"williamboman/mason-lspconfig.nvim"}
    use{"neovim/nvim-lspconfig}
--]]

end)
