local function force_black_bg()
  local hls = vim.api.nvim_get_hl(0, {})
  for name, attrs in pairs(hls) do
    if not attrs.link then
      attrs.bg = 0x000000
      pcall(vim.api.nvim_set_hl, 0, name, attrs)
    end
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = force_black_bg,
})

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = false,
        },
      })
      vim.cmd.colorscheme("rose-pine-moon")
      force_black_bg()
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "rose-pine",
  --   },
  -- },
}
