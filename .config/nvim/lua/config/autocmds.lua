-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Open the sidebar once at startup; Space e can still hide/show it.
-- Do not interfere with headless use, stdin, Git messages or restored layouts.
vim.schedule(function()
  if #vim.api.nvim_list_uis() == 0 or vim.fn.index(vim.v.argv, "-") >= 0 then
    return
  end
  if vim.bo.buftype ~= "" or vim.tbl_contains({ "gitcommit", "gitrebase" }, vim.bo.filetype) then
    return
  end
  if #vim.api.nvim_tabpage_list_wins(0) > 1 or #Snacks.picker.get({ source = "explorer" }) > 0 then
    return
  end
  local current = vim.api.nvim_get_current_win()
  Snacks.explorer({ cwd = LazyVim.root() })
  if vim.api.nvim_win_is_valid(current) then
    vim.api.nvim_set_current_win(current)
  end
end)
