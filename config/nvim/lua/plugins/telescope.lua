local telescope = require('telescope')

telescope.setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    file_sorter = require 'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter = require 'telescope.sorters'.get_generic_fuzy_sorter,
    path_display = true,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker,
    mappings = {
      n = {
        ["q"] = require 'telescope.actions'.close,
      }
    }
  }
}
require("telescope").load_extension "file_browser"

local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = false }
keymap('n', '/', ':Telescope live_grep<CR>', opt)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '[Window]s', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '[Window]b', builtin.buffers, {})
vim.keymap.set('n', '[Window]hr', builtin.help_tags, {})

vim.api.nvim_set_keymap("n", "[Window]f", ":Telescope file_browser<CR>", { noremap = true, silent = false })
