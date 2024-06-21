local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

-- Function to close nvim-tree before quitting Neovim
-- local function close_nvim_tree_on_exit()
--     local api = require'nvim-tree.api'
--     api.tree.close()
-- end

-- Create an autocommand to close nvim-tree before exiting Neovim
-- autocmd("VimLeavePre", {
--     pattern = "*",
--     callback = close_nvim_tree_on_exit,
-- })

-- vim.diagnostic.disable()
