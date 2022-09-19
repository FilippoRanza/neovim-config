"Filippo Ranza


" Basic vim config
source $HOME/.config/nvim/basic-nvim-config.vim

" Neovide GUI config
source $HOME/.config/nvim/neovide-config.vim

" Use Packer.nvim package manager
lua require('plugins')
lua require('load_configs')

" Load airline configuration
source $HOME/.config/nvim/airline-config.vim

" Set color scheme: must be after plugins load
colorscheme tokyonight-storm

highlight LineNr guiFg=yellow
highlight LineNr ctermfg=yellow
