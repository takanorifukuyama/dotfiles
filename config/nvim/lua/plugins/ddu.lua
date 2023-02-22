vim.cmd[[
  call ddu#custom#patch_global({
    \   'ui': 'ff',
    \   'sources': [{'name': 'file_rec', 'params': {}},
    \      {'name': 'file'},
    \      {'name': 'colorscheme'},
    \      {'name': 'buffer'}],
    \   'sourceOptions': {
    \     '_': {
    \       'matchers': ['matcher_substring'],
    \     },
    \   },
    \   'kindOptions': {
    \     'file': {
    \       'defaultAction': 'open',
    \     },
    \     'colorscheme': {
    \       'defaultAction': 'set',
    \     },
    \   },
    \   'uiParams': {
    \      'ff': {
    \         'startFilter': v:false,
    \         'split': 'floating',
    \      },
    \   },
    \   'filterParams': {
    \      'matcher_substring': {
    \          'highlightMatched': 'Search',
    \      },
    \   },
    \ })

autocmd FileType ddu-ff call s:ddu_my_settings()
function! s:ddu_my_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#ff#do_action('itemAction')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#ff#do_action('toggleSelectItem')<CR>
  nnoremap <buffer><silent> i
        \ <Cmd>call ddu#ui#ff#do_action('openFilterWindow')<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#ff#do_action('quit')<CR>
endfunction

autocmd FileType ddu-ff-filter call s:ddu_filter_my_settings()
function! s:ddu_filter_my_settings() abort
  inoremap <buffer><silent> <CR>
  \ <Esc><Cmd>close<CR>
  nnoremap <buffer><silent> <CR>
  \ <Cmd>close<CR>
  nnoremap <buffer><silent> q
  \ <Cmd>close<CR>
endfunction

nnoremap <silent> [Window]f :<C-u>Ddu file<cr>
nnoremap <silent> [Window]b :<C-u>Ddu buffer<cr>
nnoremap <silent> [Window]s :<C-u>Ddu file_rec<cr>
nnoremap <silent> xdc :Ddu colorscheme<cr>
]]