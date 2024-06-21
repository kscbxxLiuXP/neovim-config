-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
local m_theme

if vim.g.vscode then
    m_theme = "vscode"
else
    m_theme = "default"
end

M.ui = {
    theme = "ayu_light",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
    statusline = {
        theme = m_theme,

        -- theme = "vscode_colored",
        modules = {
            --   -- The default cursor module is override
            -- cursor = function()
            -- return "%#BruhHl#" .. " bruh " -- the highlight group here is BruhHl
            -- end,
            -- mode = function()
            --     return "$(pencil)"
            -- end,
        },
    },
}

return M
