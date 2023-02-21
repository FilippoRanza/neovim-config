
local util = require("formatter.util")
local function clang_format()
    return {
        exe = "clang-format",
        args = {
          "-assume-filename",
          util.escape_path(util.get_current_buffer_file_name()),
          "--style={IndentWidth: 4}"
        },
        stdin = true,
        try_node_modules = true,
    }
end

require("formatter").setup {
    filetype = {
        python = require("formatter.filetypes.python").black,
        rust = require("formatter.filetypes.rust").rustfmt,
        c = clang_format,
        cpp = clang_format,
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
}
