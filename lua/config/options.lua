-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options herei

local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.relativenumber = false

vim.api.nvim_create_autocmd("BufWritePost", {

    pattern = "*.rs",
    callback = function()
        vim.cmd("silent! !cargo fmt")
        vim.cmd("silent! !cargo run")
    end,
})
