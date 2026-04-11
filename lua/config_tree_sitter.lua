
require('nvim-treesitter').install {
    "c",
    "cpp",
    "java",
    "lua",
    "rust",
    "python",
    "latex",
    "markdown",
    "markdown_inline",
  }
require('nvim-treesitter').setup({

  sync_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "markdown", "markdown_inline" },
  },

})


require("nvim-treesitter-textobjects").setup {
    select = {
      enable = true,
      lookahead = true,
      include_surrounding_whitespace = false,
    },
}

vim.keymap.set({ "x", "o" }, "af", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "if", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ac", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ic", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
end)



