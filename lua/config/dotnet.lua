local M = {}

function M.dotnet_build()
    vim.cmd("!dotnet build")
end

function M.dotnet_clean()
    vim.cmd("!dotnet clean")
end

function M.dotnet_run()
    local proj_path = vim.fn.input("Run project: ", vim.fn.getcwd(), "dir")
    vim.cmd("!dotnet run --project " .. proj_path)
end

function M.dotnet_build_release()
    vim.cmd("!dotnet build --configuration Release")
end

return M
