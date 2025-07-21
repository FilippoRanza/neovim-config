local function add_include_statement()
    local bufname = vim.api.nvim_buf_get_name(0)  -- Get full file path
    local filename = bufname:match("[^/\\]+$")   -- Extract file name only

    local regex = "";
    local subs = "";
    if filename:match("%.cpp$") then
        regex = "%.cpp$"
        subs = ".hpp"
    elseif filename:match("%.c$") then
        regex = "%.c$"
        subs = ".h"
    else
        return  -- Exit if not a .cpp file
    end

    local header_name = filename:gsub(regex, subs)  -- Replace .cpp with .hpp

    -- Insert #include statement
    local lines = {
        "#include \"" .. header_name .. "\"",
        "",
        ""
    }

    vim.api.nvim_buf_set_lines(0, 0, 0, false, lines) -- Add lines to buffer
    vim.api.nvim_win_set_cursor(0, {3, 0}) -- Move cursor below the include statement
end

-- Create a Neovim autocommand to trigger on new .cpp files
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.cpp",
    callback = add_include_statement,
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.c",
    callback = add_include_statement,
})

local function set_include_guard()
    local bufname = vim.api.nvim_buf_get_name(0)  -- Get full file path
    local filename = bufname:match("[^/\\]+$")   -- Extract file name only

    if not filename or (not filename:match("%.hpp$") and not filename:match("%.h$")) then
        return  -- Exit if the file is not a .hpp file
    end

    -- Convert filename to uppercase and replace non-alphanumeric characters with underscores
    local guard = filename:upper():gsub("[^A-Z0-9]", "_")

    -- Insert include guards at the beginning of the file
    local lines = {
        "#ifndef " .. guard,
        "#define " .. guard,
        "",
        "",
        "#endif // " .. guard
    }

    vim.api.nvim_buf_set_lines(0, 0, 0, false, lines) -- Add lines to buffer
    vim.api.nvim_win_set_cursor(0, {4, 0}) -- Move cursor inside the guards
end

-- Create a Neovim command to run the function
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.hpp",
    callback = set_include_guard,
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.h",
    callback = set_include_guard,
})

