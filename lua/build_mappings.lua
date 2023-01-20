

function test()
    vim.api.nvim_call_function("MakeTest", {})
end

function build()
    vim.api.nvim_call_function("MakeBuild", {})
end

vim.keymap.set('n', '<space>b', build)
vim.keymap.set('n', '<space>t', test)

