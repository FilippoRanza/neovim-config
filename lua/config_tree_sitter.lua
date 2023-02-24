
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "java", "lua", "rust", "julia", "python", "latex"},

  sync_install = false,

  highlight = {
    enable = true,
  },
  rainbow = {
      enable = true,
      extended_mode = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
      },
      include_surrounding_whitespace = true,
    },
  },
}





