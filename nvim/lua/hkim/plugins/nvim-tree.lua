return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvimtree = require("nvim-tree")
        
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            filters = {
                custom = {".DS_Store"},
            },
            -- add keymaps?
        })
        local keymap = vim.keymap

        keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle Tree"})
    end
}
