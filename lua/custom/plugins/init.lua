-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'

    -- Setup Harpoon (Required)
    harpoon:setup()

    local keymap = vim.keymap.set
    local list = harpoon:list()

    -- Add current file to Harpoon list
    keymap('n', '<leader>a', function()
      list:add()
    end, { desc = 'Add file to Harpoon' })

    -- Toggle Harpoon UI
    keymap('n', '<M-e>', function()
      harpoon.ui:toggle_quick_menu(list)
    end, { desc = 'Toggle Harpoon menu' })

    -- Quick access to files in Harpoon list
    keymap('n', '<M-1>', function()
      list:select(1)
    end, { desc = 'Select Harpoon file 1' })
    keymap('n', '<M-2>', function()
      list:select(2)
    end, { desc = 'Select Harpoon file 2' })
    keymap('n', '<M-3>', function()
      list:select(3)
    end, { desc = 'Select Harpoon file 3' })
    keymap('n', '<M-4>', function()
      list:select(4)
    end, { desc = 'Select Harpoon file 4' })

    -- Navigate through Harpoon list
    keymap('n', '<C-S-P>', function()
      list:prev()
    end, { desc = 'Previous Harpoon file' })
    keymap('n', '<C-S-N>', function()
      list:next()
    end, { desc = 'Next Harpoon file' })
  end,
}
