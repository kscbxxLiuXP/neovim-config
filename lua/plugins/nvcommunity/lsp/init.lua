local utils = require "utils"

local function set_default_options(plugins)
    for _, plugin in ipairs(plugins) do
        if utils.isvscode() then
            plugin.enabled = false -- Set lazy attribute to true
        end
    end
    return plugins
end
local lsp_plugins = {

    { import = "plugins.nvcommunity.lsp.barbecue" },
    { import = "plugins.nvcommunity.lsp.codeactionmenu" },
    { import = "plugins.nvcommunity.lsp.dim" },
    { import = "plugins.nvcommunity.lsp.lsplines" },
    { import = "plugins.nvcommunity.lsp.lspsaga" },
    { import = "plugins.nvcommunity.lsp.lspui" },
    { import = "plugins.nvcommunity.lsp.mason-lspconfig" },
    { import = "plugins.nvcommunity.lsp.prettyhover" },
}

lsp_plugins = set_default_options(lsp_plugins)

return lsp_plugins
