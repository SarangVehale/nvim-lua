local telescope = require('telescope')
local actions = require('telescope.actions')
local keymap = vim.keymap

keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files' })
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Fuzzy find string in cwd' })
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Fuzzy find buffers' })

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}
