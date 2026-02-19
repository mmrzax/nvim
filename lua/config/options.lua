-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

vim.opt.wrap = false
