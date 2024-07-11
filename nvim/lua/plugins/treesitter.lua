return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")

        config.setup({
            ensure_installed = {
                "python",
                "lua",
                "vim",
                "vimdoc",
                "bash",
                "bibtex",
                "gitignore",
                "jq",
                "json",
                "latex",
                "markdown",
                "markdown_inline",
                "yaml",
                "regex",
                "dockerfile",
                "fortran",
                "matlab",
            },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
        })
    end
}
