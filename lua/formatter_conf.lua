require("formatter").setup {
    filetype = {
        python = require("formatter.filetypes.python").black,
        rust = require("formatter.filetypes.rust").rustfmt,
        c = require("formatter.filetypes.c").clangformat,
        cpp = require("formatter.filetypes.cpp").clangformat,
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
}
