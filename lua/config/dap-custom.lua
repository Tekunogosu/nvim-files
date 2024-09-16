local dap = require("dap")

dap.adapters.coreclr = {
    type = "executable",
    command = "/usr/bin/netcoredbg",
    args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "Launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/obj/Debug/net8.0/ref/*.dll", "file")
        end,
    },
}
