return{
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup({
    })
    local wk = require("which-key")
    wk.register({
        ["<leader>"] = {
            p = { "<cmd>Lazy<cr>", "Plugin (Lazy)"},
            e = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree"},
            c = { "<cmd>ColorizerToggle<cr>", "Toggle Colorizer"},
            f = {
                name = "find",
                f = { "<cmd>Telescope find_files<cr>", "Find File"},
                r = { "<cmd>Telescope live_grep<cr>", "ripgrep"},
                h = { "<cmd>Telescope help_tags<cr>", "Help"},
            },
            t = {
                name = "terminal",
                h = { "<cmd>ToggleTerm<cr>", "Toggle Terminal Window"},
                f = { "<cmd>ToggleTerm direction=float<cr>", "Floating Terminal Window"},
            },
        },
    })
  end
}
