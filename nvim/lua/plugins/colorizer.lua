return {
    "NvChad/nvim-colorizer.lua",
    opts = {
        filetypes = {"*"},
        user_default_options = {
            RGB = true,          -- #RGB Hex codes
            RRGGBB = true,       -- # RRGGBB hex codes
            names = true,        -- "Name" codes
            mode = "background", -- set display mode
            always_update = false
        },
    },
    config = function ()
        require("colorizer").setup({})
    end,
}
