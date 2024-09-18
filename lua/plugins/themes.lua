return {
    {
        "embark-theme/vim",
    },
    {
        "git@github.com:rmehri01/onenord.nvim.git",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("onenord")
        end,
    },
    {
        "neanias/everforest-nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                background = "soft",
                transparent_background_level = 0,
                ui_contrast = "low",
                colours_override = function(palette)
                    palette.bg0 = "#2f1f27"
                    -- palette.bg1 = "#2f1f2f"
                    palette.bg2 = "#271f2f"
                    palette.bg5 = "#271f2f"
                end,
            })
            -- vim.cmd.colorscheme("everforest")
        end,
    },
    {
        "sho-87/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "mellow-theme/mellow.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
}
