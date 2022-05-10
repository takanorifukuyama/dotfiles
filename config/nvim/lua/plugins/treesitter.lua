require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,
    disable = {
      'ruby',
      'c_sharp',
      'vue',
    }
  },
}
