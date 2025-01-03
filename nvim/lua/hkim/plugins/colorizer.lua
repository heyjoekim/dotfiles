return {
    "NvChad/nvim-colorizer.lua",
    opts = {
        filetypes = {"*"},
        user_default_options = {
            RGB = true,
            RRGGBB = true,
            names = true,
            mode = "background",
            always_update = false,
        },
    },
    config = function ()
        require("colorizer").setup({})
    end
}
