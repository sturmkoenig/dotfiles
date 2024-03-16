vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"


vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox'

theme = vim.fn.system('defaults read -g AppleInterfaceStyle')
if string.find(theme, 'Dark') then
  vim.cmd 'colorscheme gruvbox'
else
  vim.cmd 'colorscheme tokyonight-day'
end
