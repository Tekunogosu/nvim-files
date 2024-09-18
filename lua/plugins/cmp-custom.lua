return {
    "hrsh7th/nvim-cmp",
    dependencies = {},
    opts = function(_, opts)
        local cmp = require("cmp")
        -- Remove the 'luasnip' source from the configuration
        opts.sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
            -- { name = "luasnip" }, -- comment or remove this line
        })
    end,
}
