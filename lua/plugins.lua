return require('packer').startup(function (use)

    use 'jiangmiao/auto-pairs'
    use {"akinsho/toggleterm.nvim", tag="v2.*"}

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
    }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-fugitive'
    use 'lervag/vimtex'
    use 'nvim-treesitter/nvim-treesitter' 
    use 'p00f/nvim-ts-rainbow' 
    use 'mizlan/iswap.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use 'mbbill/undotree'

    use { 'mhartington/formatter.nvim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'numToStr/Comment.nvim' }
    -- mkdir
    use { 'jghauser/mkdir.nvim' }
    use {"nvim-treesitter/nvim-treesitter-textobjects" }
    use({
        "neanias/everforest-nvim",
    })
end)



