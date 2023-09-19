-- vim.fn["ddc#custom#patch_global"]('ui', 'native')
-- vim.fn["ddc#custom#patch_global"]('sources', {'nvim-lsp', 'around', 'vsnip'})
-- vim.fn["ddc#custom#patch_global"]('sourceOptions', {
--   _ = {
--     matchers = {'matcher_head'},
--     sorters = {'sorter_rank'},
--     converters = {'converter_remove_overlap'},
--   },
--   around = { mark = 'A'},
--   -- nvim-lsp = {
--   --   mark = 'L',
--   --   forceCompletionPattern = '\.\w*|:\w*|->\w*',
--   -- }
-- })
-- vim.fn["ddc#custom#patch_global"]('sourceParams', {
--   acound = { maxSize = 500 }
-- })
-- vim.fn["ddc#enable"]()

-- local keymap = vim.api.nvim_set_keymap

-- keymap("i", "<Tab>", "pumvisible() ? '<C-n>' : (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ? '<TAB>' : ddc#map#manual_complete() ",
--   { expr = true, silent = true })
-- keymap("i", "<S-Tab>", "ddc#map#pum_visible() ? '<C-p> : '<C-h>'", { expr = true })


vim.cmd[[
  call ddc#custom#patch_global('ui', 'native')
  " Customize global settings
  " Use around source.
  " https://github.com/Shougo/ddc-around
  call ddc#custom#patch_global('sources', ['nvim-lsp', 'around'])
  
  " Use matcher_head and sorter_rank.
  " https://github.com/Shougo/ddc-matcher_head
  " https://github.com/Shougo/ddc-sorter_rank
  call ddc#custom#patch_global('sourceOptions', {
        \ '_': {
        \ 'matchers': ['matcher_head'],
        \ 'sorters': ['sorter_rank'],
        \ 'converters': ['converter_remove_overlap'],
        \ },
        \ 'around': {'mark': 'A'},
        \ 'nvim-lsp': {
        \     'mark': 'L',
        \     'forceCompletionPattern': '\.\w*|:\w*|->\w*',
        \ },
        \ })

  call ddc#custom#patch_global(#{
      \ sourceParams: #{
      \   nvim-lsp: #{
      \     snippetEngine: denops#callback#register({
      \           body -> vsnip#anonymous(body) }),
      \     enableResolveItem: v:true,
      \     enableAdditionalTextEdit: v:true,
      \     confirmBehavior: 'replace',
      \   },
      \ around: {'maxSize': 500},
      \ },
      \})
  
  " Customize settings on a filetype
  call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
  call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
        \ 'clangd': {'mark': 'C'},
        \ })
  call ddc#custom#patch_filetype('markdown', 'sourceParams', {
        \ 'around': {'maxSize': 100},
        \ })
  
  " Mappings
  
  " <TAB>: completion.
  inoremap <silent><expr> <TAB>
  \ pumvisible() ? '<C-n>' :
  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
  \ '<TAB>' : ddc#map#manual_complete()
  
  " <S-TAB>: completion back.
  inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'
  
  
]]
