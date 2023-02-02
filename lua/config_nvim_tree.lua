-- Nvim Tree configuration file
--



require('nvim-tree').setup{
      prefer_startup_root = true,
      sync_root_with_cwd = true,
}

local function open_nvim_tree() 
    require('nvim-tree.api').tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
