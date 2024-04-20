local builtin = require('telescope.builtin')
vim.g.mapleader = " "

-- nvim tree
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- ng.nvim
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<leader>r", ":NvimTreeFindFile<CR>")
vim.g.tabby_keybinding_accept = '<Tab>'
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>d", ":lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<leader>s", ":lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>vfs", ":Telescope lsp_document_symbols<CR>")
