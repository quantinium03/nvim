vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("quantinium.lazy");
require("quantinium.main.keymaps");
require("quantinium.main.settings");
require("quantinium.main");

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.api.nvim_create_user_command('RunLiveServer', function()
  vim.fn.jobstart('live-server &> /dev/null &', {detach = true})
end, {})

-- Map the function to <leader>lvs
vim.keymap.set('n', '<leader>lvs', ':RunLiveServer<CR>', { noremap = true, silent = true })
