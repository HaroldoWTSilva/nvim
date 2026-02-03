-- Interface
vim.opt.number = true
vim.opt.wrap = true
vim.opt.mouse = "a"

-- Indentação e tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Limite de largura de linha
vim.opt.textwidth = 80
vim.opt.formatoptions:append("t")
vim.opt.colorcolumn = "81"

require("config.lazy")

require'nvim-treesitter'.install { 
'lua', 'javascript', 'php', 'awk', 'c', 'css', 'html', 'python', 'prolog',
'vimdoc'
}

vim.lsp.enable('phpactor')

vim.g.mapleader = " "
--vim.cmd(":Neotree")
