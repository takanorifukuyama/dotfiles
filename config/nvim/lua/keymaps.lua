
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',


-- nnoremap <silent> <Space><Space> :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
local keymap = vim.api.nvim_set_keymap
keymap("n", "s", "[Window]", {})

keymap("i", "jj", "<Esc>", opts)
keymap("n", "<C-u>", "<C-g>u<C-u>", opts)

keymap("n", "[Window]p", ":<C-u>vsplit<CR>:wincmd w<CR>", opts)
keymap("n", "vs", ":<C-u>split<CR>:wincmd w<CR>", opts)
keymap("n", "[Window]o", ":<C-u>only<CR>", opts)
keymap("n", "<Tab>", ":wincmd w<CR>", opts)
keymap("n", "q", "winnr('$') != 1 ? ':<C-u>close<CR>' : ''", { expr = true, silent = true })
