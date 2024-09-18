-- https://github.com/rmagatti/auto-session
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
return {
    "rmagatti/auto-session",
    lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        -- log_level = 'debug',
    },
    config = function()
        require("auto-session").setup({
            log_level = "info",
            auto_session_enabled = true,
            auto_save_enabled = true,
            auto_restore_enabled = true,
            auto_session_suppress_dirs = nil, -- Add any directories to ignore sessions
            pre_restore_cmds = { -- Optional: Any commands you want before restoring the session
                -- Add any pre-restore commands here if needed
            },
            post_restore_cmds = {
                function()
                    -- Reopen NeoTree after session restoration
                    vim.cmd("Neotree show")
                end,
            },
        })
    end,
}
