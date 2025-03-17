local function get_header()
  local time = os.date '%H'
  local time_number = tonumber(time)
  local midday = 'morning'
  if time_number >= 12 and time_number < 18 then
    midday = 'afternoon'
  end
  if time_number >= 18 then
    midday = 'eveing'
  end
  return 'Good ' .. midday .. ', Paul. Welcome back.'
end

return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.sessions').setup()
    local starter = require 'mini.starter'
    starter.setup {
      evaluate_single = true,
      header = get_header(),
      footer = '',
      items = {
        starter.sections.builtin_actions(),
        starter.sections.recent_files(10, true, true),
        starter.sections.recent_files(10, false, true),
        starter.sections.sessions(4, true),
      },
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.indexing('all', { 'Builtin actions' }),
        starter.gen_hook.padding(10, 2),
      },
    }
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
