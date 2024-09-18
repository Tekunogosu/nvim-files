return {
    "git@github.com:romgrk/barbar.nvim.git",
    enabled = true,
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for gitstatus
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    config = function()
        require("barbar").setup({
            icons = {
                buffer_index = true,
                filetype = { enabled = true },
            },
            offsets = {
                {
                    filetype = "neo-tree", -- This tells Barbar to recognize Neo-tree
                    text = "Neo-Tree", -- Optional text to display in the gap
                    highlight = "Directory",
                    text_align = "left", -- Align the text to the left
                    separator = true, -- Whether to show a separator
                },
            },
        })
    end,
}
