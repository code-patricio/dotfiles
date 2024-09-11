-- ## opts ## --
vim.g.mapleader = " "

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

--vim.opt.updatetime = 250
--vim.opt.timeoutlen = 500

vim.opt.completeopt = "menu,menuone,noinsert"

vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- ## remap options ##

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")

-- ## Lazy.nvim ##

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

    --[[
--]]
    {
        "ThePrimeagen/vim-be-good"
    },
    --[[
--]]
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },

    --[[
--]]
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "c", "query", "vim", "vimdoc", "lua", "markdown", "markdown_inline",
                    "java"
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },

    --[[
--]]
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {},
            })

            --           vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            --           vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            --           vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            --           vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

--           vim.api.nvim_create_autocmd('LspAttach', {
--               group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--               callback = function(ev)
--                   -- Enable completion triggered by <c-x><c-o>
--                   vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

--                   local opts = { buffer = ev.buf }
--                   vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--                   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--                   vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--                   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--                   vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--                   vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
--                   vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
--                   vim.keymap.set('n', '<space>wl', function()
--                       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--                   end, opts)
--                   vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
--                   vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--                   vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
--                   vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--                   vim.keymap.set('n', '<space>f', function()
--                       vim.lsp.buf.format { async = true }
--                   end, opts)
--               end,
--           })
       end
    },

    --[[
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            local cmp = require 'cmp'
            local luasnip = require 'luasnip'
            luasnip.config.setup {}

            cmp.setup {
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert {
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-y>'] = cmp.mapping.confirm { select = true },
                    ['<C-Space>'] = cmp.mapping.complete {},
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                        { name = 'buffer' },
                        { name = 'path' },
                    })
            }
        end
    },
--]]

})
