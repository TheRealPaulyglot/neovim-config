local tokyonight = {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'tokyonight-storm'
  end,
}

local kanagawa = {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'kanagawa'
  end,
}

local oceanic = {
  'marko-cerovac/material.nvim',
  priority = 1000,
  init = function()
    vim.g.material_style = 'oceanic'
    vim.cmd.colorscheme 'material'
  end,
}

local darker = {
  'marko-cerovac/material.nvim',
  priority = 1000,
  init = function()
    vim.g.material_style = 'darker'
    vim.cmd.colorscheme 'material'
  end,
}

local deep = {
  'marko-cerovac/material.nvim',
  priority = 1000,
  init = function()
    vim.g.material_style = 'deep ocean'
    vim.cmd.colorscheme 'material'
  end,
}

local frappe = {
  'catppuccin/nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin-frappe'
  end,
}

local mocha = {
  'catppuccin/nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}

Themes = {

  Select = function(value)
    if value == Themes.Options.tokyonight then
      return tokyonight
    end
    if value == Themes.Options.kanagawa then
      return kanagawa
    end
    if value == Themes.Options.oceanic then
      return oceanic
    end
    if value == Themes.Options.darker then
      return darker
    end
    if value == Themes.Options.deep then
      return deep
    end
    if value == Themes.Options.frappe then
      return frappe
    end
    if value == Themes.Options.frappe then
      return mocha
    end
  end,

  Options = {
    tokyonight = 'tokyonight',
    kanagawa = 'kanagawa',
    oceanic = 'oceanic',
    darker = 'darker',
    deep = 'deep ocean',
    frappe = 'frappe',
    mocha = 'mocha',
  },
}

return Themes
