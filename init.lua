require 'src.main.options'
require 'src.main.terminal'
local themes = require 'src.lazy-config.themes'

require('lazy').setup {
  'tpope/vim-sleuth',
  require 'src.lazy-config.key-menu',
  require 'src.lazy-config.telescope',
  require 'src.lazy-config.lazydev',
  require 'src.lazy-config.lsps',
  require 'src.lazy-config.roslyn',
  -- require 'src.lazy-config.copilot',
  require 'src.lazy-config.autoformat',
  require 'src.lazy-config.autocompletion',
  require 'src.lazy-config.texteditor',
  require 'src.lazy-config.mini-plugins',
  require 'src.lazy-config.treesitter',
  require 'src.lazy-config.neo-tree',
  require 'src.lazy-config.autopairs',
  require 'src.lazy-config.git-keymaps',
  themes.Select(themes.Options.darker),
}
-- WARN: 'modeline'
