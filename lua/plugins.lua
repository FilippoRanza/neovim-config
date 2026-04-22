


require("lazy").setup({
    'jiangmiao/auto-pairs',
    { 'kyazdani42/nvim-tree.lua', },
    { 'kyazdani42/nvim-web-devicons' },
    {'vim-airline/vim-airline'},
    'vim-airline/vim-airline-themes',
    'tpope/vim-fugitive',
    'lervag/vimtex',
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    {
      "neovim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      lazy = false
    },
    'mizlan/iswap.nvim',
    { 'nvim-telescope/telescope.nvim', },
    { 'nvim-lua/plenary.nvim' },
    'mbbill/undotree',
    { 'mhartington/formatter.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'numToStr/Comment.nvim' },
    { 'jghauser/mkdir.nvim' },
    { "catppuccin/nvim"},
    { "christoomey/vim-tmux-navigator" },
    "vim-scripts/applescript.vim",
    {"wellle/targets.vim"},
    { 'neovim-treesitter/treesitter-parser-registry' }
}
)

