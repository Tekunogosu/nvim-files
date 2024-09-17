return {
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
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim",
                },
                opts = { lsp = { auto_attach = true } },
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("telescope").load_extension("yank_history")
        end,
    },
    {
        "git@github.com:romgrk/barbar.nvim.git",
        dependencies = {
            "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
            "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
        },
        init = function()
            vim.g.barbar_auto_setup = false
        end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = "^1.0.0", -- optional: only update when a new 1.x version is released
    },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
        },
        config = true,
    },
}
