require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "<leader>ll", function()
    -- 选中当前行
    vim.cmd "normal! V"
    -- 复制当前选中的内容
    require("conform").format { lsp_fallback = true }
    -- 退出选中模式
    vim.api.nvim_input "<Esc>"
end, { desc = "format files" })

map("v", "<leader>f", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

map("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", { desc = "telescope find references" })
