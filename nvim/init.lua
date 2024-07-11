require("hkim")
require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local readmes = vim.api.nvim_create_augroup("Markdown Wrap Settings", {clear = true})

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = {'*.md'},
    group = readmes,
    command = 'setlocal wrap'
})


local texs = vim.api.nvim_create_augroup("LaTex Wrap Settings", {clear = true})

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = {'*.tex'},
    group = texs,
    command = 'setlocal wrap'
})
