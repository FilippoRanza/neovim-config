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
colorscheme catppuccin
let g:airline_theme = "catppuccin"

highlight LineNr guiFg=yellow
highlight LineNr ctermfg=yellow

source $HOME/.config/nvim/make.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/find_path.vim
source $HOME/.config/nvim/skeleton.vim

set autowrite
set completeopt-=preview

let g:c_syntax_for_h = 1
