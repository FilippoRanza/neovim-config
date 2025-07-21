vim.api.nvim_set_keymap("n", "<space>gi", [[:lua jump_to_corresponding_file("edit")<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>gv", [[:lua jump_to_corresponding_file("vsplit")<CR>]], { noremap = true, silent = true })

function jump_to_corresponding_file(action)
    local current_file = vim.fn.expand("%")
    local new_file

    if current_file:match("%.hpp$") then
        new_file = current_file:gsub("%.hpp$", ".cpp")
    elseif current_file:match("%.cpp$") then
        new_file = current_file:gsub("%.cpp$", ".hpp")
    elseif current_file:match("%.h$") then
        new_file = current_file:gsub("%.h$", ".c")
    elseif current_file:match("%.c$") then
        new_file = current_file:gsub("%.c$", ".h")
    else
        print("Not an .hpp, .cpp, .c, .h file")
        return
    end

    vim.cmd(action .. " " .. new_file)
end

