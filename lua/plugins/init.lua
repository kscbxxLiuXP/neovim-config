local function is_vscode()
    return vim.g.vscode ~= nil
end

return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    {
        -- editor import
        require "plugins.nvcommunity.editor.biscuits",
        require "plugins.nvcommunity.editor.hlargs",
    },
    {
        --lsp import
        require "plugins.nvcommunity.lsp.barbecue",
        require "plugins.nvcommunity.lsp.codeactionmenu",
        require "plugins.nvcommunity.lsp.dim",
        require "plugins.nvcommunity.lsp.lsplines",
        require "plugins.nvcommunity.lsp.lspsaga",
        require "plugins.nvcommunity.lsp.lspui",
        require "plugins.nvcommunity.lsp.mason-lspconfig",
        require "plugins.nvcommunity.lsp.prettyhover",
    },
    {
        -- git import
        require "plugins.nvcommunity.git.neogit",
        require "plugins.nvcommunity.git.diffview",
        require "plugins.nvcommunity.git.lazygit",
    },

    {
        "nvim-telescope/telescope.nvim",
        opts = function()
            local conf = require "nvchad.configs.telescope"

            conf.defaults.mappings.i = {
                ["<C-j>"] = require("telescope.actions").move_selection_next,
                ["<C-k>"] = require("telescope.actions").move_selection_previous,
                ["<Esc>"] = require("telescope.actions").close,
            }

            -- or
            -- table.insert(conf.defaults.mappings.i, your table)

            return conf
        end,
    },
    {
        "declancm/cinnamon.nvim",
        config = function()
            require("cinnamon").setup {
                default_keymaps = true, -- Create default keymaps.
                extra_keymaps = true, -- Create extra keymaps.
                extended_keymaps = true, -- Create extended keymaps.
                override_keymaps = true,
                max_length = 500,
                scroll_limit = -1,
            }
        end,
        lazy = is_vscode(),
    },
}
