local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

require('plugins/plugins')

vim.opt.rtp:prepend(lazypath)


if vim.g.vscode then
  require('conf/set')
  require("conf/keymap")
  require("autoclose").setup()
else
  require("lazy").setup(plugins)
  require("plugins/conf/nvim-tree-setup")
  require("plugins/conf/lsp")
  require("plugins/conf/cmp")
  require("plugins/conf/nvim-ufo")
  require("plugins/conf/attempt")
  require("conf/keymap")
  require('lualine').setup()
  require("autoclose").setup()
  require('mason').setup()
  require('conf/set')
end
