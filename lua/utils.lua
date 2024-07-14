local utils = {}
function utils.isvscode()
    return vim.g.vscode ~= nil
end

return utils
