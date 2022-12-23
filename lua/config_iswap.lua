local iswap = require('iswap')

function swap_args() 
    vim.cmd(":normal _")
    vim.cmd(":normal f(")
    iswap.iswap()
end

vim.keymap.set('n', '<space>sa', swap_args)
vim.keymap.set('n', '<space>ns', iswap.iswap_node)
