return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "SirVer/ultisnips", -- UltiSnips for snippets
        "neovim/nvim-lspconfig", -- For LSP
        "hrsh7th/cmp-nvim-lsp", -- Completion source for LSP
        "hrsh7th/cmp-buffer", -- Buffer completions
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
    opts = function(_, opts)
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["UltiSnips#Anon"](args.body) -- UltiSnips integration
                end,
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "path" },
                { name = "ultisnips" },
                { name = "treesitter" },
            }),
        })
    end,
}
