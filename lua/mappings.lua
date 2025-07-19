require 'custom.keymaps.generals'

-- require 'custom.keymaps.nvchad'
require 'custom.keymaps.bufferline'

require 'custom.keymaps.nvimtree'
require 'custom.keymaps.tmux'
require 'custom.keymaps.move'
require 'custom.keymaps.lazygit'
require 'custom.keymaps.toggleterm'

require 'custom.keymaps.todo'
require 'custom.keymaps.todofloat'

require 'custom.keymaps.yazi'

require 'custom.keymaps.toggle-checkbox'

require 'custom.keymaps.competitive_programming'
require 'custom.keymaps.coderunner'
require 'custom.keymaps.copilot'
require 'custom.keymaps.undotree'
-- require 'custom.keymaps.markdown'
require 'custom.keymaps.flutter'
-- Map <C-n> to toggle nvim-tree in normal mode
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Toggle NvimTree' })
-- Ensure arrow keys work for navigation in normal mode
vim.keymap.set('n', '<Up>', 'k', { noremap = true, silent = true, desc = 'Move up' })
vim.keymap.set('n', '<Down>', 'j', { noremap = true, silent = true, desc = 'Move down' })
vim.keymap.set('n', '<Left>', 'h', { noremap = true, silent = true, desc = 'Move left' })
vim.keymap.set('n', '<Right>', 'l', { noremap = true, silent = true, desc = 'Move right' })
