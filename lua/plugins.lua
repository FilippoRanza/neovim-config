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
    use 'dracula/vim'
end)


