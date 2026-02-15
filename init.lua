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

vim.opt.clipboard = "unnamedplus"

require("config.lazy")

require'nvim-treesitter'.install { 
'lua', 'javascript', 'php', 'awk', 'c', 'css', 'html', 'python', 'prolog',
'vimdoc', 'markdown', 'markdown_inline', 'json', 'yaml'
}

vim.lsp.enable('phpactor')
vim.lsp.enable('lua-ls')

vim.g.mapleader = " "
vim.keymap.set("v", "<leader>y", '"+y', {
    noremap = true,
    silent = true,
    desc = "Copiar seleção para clipboard"
})

vim.keymap.set("n", "<leader>t", function()
    vim.cmd("Neotree toggle")
end, {
    silent = true,
    desc = "Toggle Neo-tree"
})

vim.keymap.set("n", "<leader>cd", function()
    vim.cmd("Copilot disable")
end, {
    silent = true,
    desc = "Disable Copilot"
})

vim.keymap.set("n", "<leader>ce", function()
    vim.cmd("Copilot enable")
end, {
    silent = true,
    desc = "Enable Copilot"
})

vim.keymap.set("n", "<leader>cp", function()
    vim.cmd("Copilot panel")
end, {
    silent = true,
    desc = "Abre o painel do Copilot"
})

