vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
  -- 起動時に読み込むプラグインを書いてください。
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'nvim-treesitter/nvim-treesitter'

  use "vim-denops/denops.vim"
  use "Shougo/context_filetype.vim"
  use "Shougo/neosnippet-snippets"
  use 'thinca/vim-themis'
  use 'sheerun/vim-polyglot'
  use 'ayu-theme/ayu-vim'
  use 'Shougo/vimproc.vim'
  use 'vim-airline/vim-airline'
  use 'yggdroot/indentline'
  use 'nvim-lua/plenary.nvim'
  use 'airblade/vim-gitgutter'
  use 'Shougo/ddu.vim'
  use 'Shougo/ddu-ui-ff'
  use 'Shougo/ddu-source-file_rec'
  use 'Shougo/ddu-source-file'
  use 'Shougo/ddu-filter-matcher_substring'
  use 'Shougo/ddu-kind-file'
  use 'Shougo/ddu-commands.vim'
  use '4513ECHO/ddu-source-colorscheme'
  use 'shun/ddu-source-buffer'

  -- from dein_lazy
  use 'Shougo/ddc.vim'
  use 'Shougo/ddc-ui-native'
  use 'Shougo/ddc-around'
  use 'Shougo/ddc-matcher_head'
  use 'Shougo/ddc-sorter_rank'
  use 'Shougo/ddc-converter_remove_overlap'
  use 'Shougo/ddc-nvim-lsp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'
  use 'matsui54/denops-popup-preview.vim'
  use 'matsui54/denops-signature_help'
  use 'ray-x/lsp_signature.nvim'
  use 'Shougo/deol.nvim'
  use 'Shougo/neosnippet'
  use 'thinca/vim-quickrun'
  use 'prettier/vim-prettier'
  use 'rhysd/accelerated-jk'
  use 'sjl/gundo.vim'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround'
  use 'cohama/lexima.vim'
  use 'tpope/vim-fugitive'
  use 'rhysd/vim-gfm-syntax'
  use 'rust-lang/rust.vim'

end)

vim.cmd [[
  set termguicolors
  let ayucolor="dark"
  autocmd ColorScheme * highlight Comment ctermfg=14 guifg=#8FA0B3
  autocmd ColorScheme * highlight LineNr ctermfg=14 guifg=#8FA0B3
  colorscheme ayu
]]