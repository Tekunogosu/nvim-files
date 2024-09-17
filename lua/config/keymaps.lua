-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "T", "<cmd>bnext<cr>", opts)

-- Save
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<C-o>:w<CR>", opts)

-- Quit
map("n", "<C-q>", ":q<CR>", opts)

-- Key mappings for nvim-dap-ui
map("n", "<Leader>du", '<Cmd>lua require"dapui".toggle()<CR>', opts)

-- CSharp: dotnet commands
map("n", "<Leader>ddb", '<Cmd>lua require"config.dotnet".dotnet_build()<CR>', opts)
map("n", "<Leader>ddr", '<Cmd>lua require"config.dotnet".dotnet_run()<CR>', opts)
map("n", "<Leader>ddc", '<Cmd>lua require"config.dotnet".dotnet_clean()<CR>', opts)
map("n", "<Leader>ddB", '<Cmd>lua require"config.dotnet".dotnet_build_release()<CR>', opts)
map("n", "<Leader>ddf", "!dotnet format<CR>", opts)

-- Cargo (Rust)
map("n", "<Leader>rb", "<cmd>!cargo build<cr>", { noremap = true })
map("n", "<Leader>rr", "<cmd>!cargo run<cr>", { noremap = true })
map("n", "<Leader>rbr", "<cmd>!cargo build --release<cr>", { noremap = true })

-- CMake (c++)
map("n", "<Leader>cbd", "<cmd>!cmake --build build --config Debug<cr>", opts)
map("n", "<Leader>cbr", "<cmd>!cmake --build build --config Release<cr>", opts)

-- lldb - debugging
map("n", "<Leader>dbn", "<cmd>lua require'dap'.continue()<cr>", opts)
map("n", "<Leader>dbo", "<cmd>lua require'dap'.step_over()<cr>", opts)
map("n", "<Leader>dbi", "<cmd>lua require'dap'.step_into()<cr>", opts)
map("n", "<Leader>dbO", "<cmd>lua require'dap'.step_out()<cr>", opts)
map("n", "<Leader>dbb", "<cmd>lua require'dap'.toggel_breakpoint()<cr>", opts)
map("n", "<S-m>", ":Navbuddy<cr>", opts)

-- IncRename
set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

-- Yanky
set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
set("n", "<c-n>", "<Plug>(YankyNextEntry)")

set("n", "<leader>h", ":Telescope yank_history<cr>")
