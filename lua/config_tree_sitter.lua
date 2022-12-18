
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "java", "lua", "rust", "python", "latex"},

  sync_install = false,

  highlight = {
    enable = true,
  },
  rainbow = {
      enable = true,
      extended_mode = true,
  }
}





