local function ts_disable(lang, buf)
  local bt = vim.bo[buf].buftype

  -- Work around Neovim 0.12 + nvim-treesitter markdown injection crash
  if lang == "markdown" or lang == "markdown_inline" then
    return true
  end

  -- Optional: also avoid TS on floating nofile buffers
  if bt == "nofile" then
    return true
  end

  local name = vim.api.nvim_buf_get_name(buf)
  if name ~= "" then
    local size = vim.fn.getfsize(name)
    if size > 100000 then
      return true
    end
  end

  return false
end


-- local function disable_rainbow_large_files(_, buf_num) 
--     local bname = vim.api.nvim_buf_get_name(buf_num)
--     local buf_size = vim.api.nvim_call_function("getfsize", { bname })
--     return buf_size > 100000
-- end


require('nvim-treesitter').setup({
  ensure_installed = {
    "c",
    "cpp",
    "java",
    "lua",
    "rust",
    "python",
    "latex",
    "markdown",
    "markdown_inline",
  },

  sync_install = false,

  highlight = {
    enable = true,
    disable = ts_disable,
    additional_vim_regex_highlighting = { "markdown", "markdown_inline" },
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
})

-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all"
--   ensure_installed = { "java", "lua", "rust", "julia", "python", "latex"},
--
--   sync_install = false,
--
--   highlight = {
--       enable = true,
--       additional_vim_regex_highlighting = false
--   },
--   -- rainbow = {
--   --     enable = false,
--   --     extended_mode = false,
--   --     disable = disable_rainbow_large_files,
--   -- },
--   textobjects = {
--       select = {
--           enable = true,
--           lookahead = true,
--           keymaps = {
--               ["af"] = "@function.outer",
--               ["if"] = "@function.inner",
--               ["ib"] = "@block.inner",
--               ["ab"] = "@block.outer",
--           },
--           include_surrounding_whitespace = true,
--       },
--   },
-- }
--
--
--
--
--
