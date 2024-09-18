return {
    -- UltiSnips plugin
    {
        "SirVer/ultisnips",
        event = "InsertEnter", -- Load on InsertEnter to delay plugin loading until needed
        dependencies = { "honza/vim-snippets" }, -- Optional: Some common snippets for various languages
        config = function()
            -- Set up UltiSnips keybindings
            vim.g.UltiSnipsExpandTrigger = "<tab>"
            vim.g.UltiSnipsJumpForwardTrigger = "<c-j>"
            vim.g.UltiSnipsJumpBackwardTrigger = "<c-k>"
            vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }
        end,
    },

    -- Snippet source for nvim-cmp
    {
        "quangnguyen30192/cmp-nvim-ultisnips",
        dependencies = {
            "SirVer/ultisnips", -- Make sure UltiSnips is a dependency
        },
        config = function()
            -- Set up nvim-cmp for UltiSnips
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["UltiSnips#Anon"](args.body) -- UltiSnips integration
                    end,
                },
                sources = {
                    { name = "ultisnips" }, -- Add UltiSnips as a source for completions
                },
            })
        end,
    },
}
