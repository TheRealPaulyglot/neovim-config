vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.opt.shell = 'pwsh.exe'
local bottom_terminal = function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 15)
end
vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-terminal-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})
vim.keymap.set('n', '<A-/>', function()
  bottom_terminal()
end)
vim.keymap.set('n', '<A-b>', function()
  bottom_terminal()
  vim.fn.chansend(vim.bo.channel, 'dotnet build --source **.csproj \r\n')
end)
vim.keymap.set('n', '<A-t>', function()
  bottom_terminal()
  vim.fn.chansend(vim.bo.channel, 'dotnet test . \r\n')
end)
local project_path = nil
vim.keymap.set('n', '<A-r>', function()
  bottom_terminal()
  if project_path == nil or project_path == '' then
    vim.fn.chansend(vim.bo.channel, 'dotnet run --project api/ \r\n')
  else
    vim.fn.chansend(vim.bo.channel, 'dotnet run --project ' .. project_path .. '\r\n')
  end
end)
