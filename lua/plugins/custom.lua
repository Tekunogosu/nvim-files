return {
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
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
                    palette.bg1 = "#2f1f2f"
                    palette.bg2 = "#271f2f"
                end,
            })
            vim.cmd.colorscheme("everforest")
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

    -- {
    --     "hrsh7th/nvim-cmp", -- nvim-cmp plugin
    --     event = "InsertEnter", -- Make sure it loads on insert mode
    --     config = function()
    --         local cmp = require("cmp")
    --
    --         cmp.setup({
    --             completion = {
    --                 -- Adjust debounce time here
    --                 debounce = 500, -- 300ms delay for suggestions to pop up
    --             },
    --             -- Add other nvim-cmp configurations like mappings, sources, etc.
    --         })
    --     end,
    -- },
}
