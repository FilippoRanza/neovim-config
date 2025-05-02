local function disable_rainbow_large_files(_, buf_num) 
    local bname = vim.api.nvim_buf_get_name(buf_num)
    local buf_size = vim.api.nvim_call_function("getfsize", { bname })
    return buf_size > 100000
end

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "java", "lua", "rust", "julia", "python", "latex"},

  sync_install = false,

  highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
  },
  -- rainbow = {
  --     enable = false,
  --     extended_mode = false,
  --     disable = disable_rainbow_large_files,
  -- },
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





