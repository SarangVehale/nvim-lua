local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
  '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
  '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
  '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
  '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
  '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
}

dashboard.section.buttons.val = {
  dashboard.button('f', '󰈞  Find file', ':Telescope find_files <CR>'),
  dashboard.button('n', '  New file', ':enew <CR>'),
  dashboard.button('r', '  Recent files', ':Telescope oldfiles <CR>'),
  dashboard.button('g', '  Find text', ':Telescope live_grep <CR>'),
  dashboard.button('c', '  Config', ':e $MYVIMRC <CR>'),
  dashboard.button('q', '  Quit', ':qa <CR>'),
}

alpha.setup(dashboard.opts)
