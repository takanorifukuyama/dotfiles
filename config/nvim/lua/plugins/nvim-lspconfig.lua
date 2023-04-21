require("mason").setup()
require("mason-lspconfig").setup()
local nvim_lsp = require('lspconfig')

local on_attach = function (client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  
  local node_root_dir = nvim_lsp.util.root_pattern("package.json", "node_modules")
  local buf_name = vim.api.nvim_buf_get_name(0)
  local current_buf = vim.api.nvim_get_current_buf()
  local is_node_repo = node_root_dir(buf_name, current_buf) ~= nil
  
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', '<space>d', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<space>h', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.format{async = true}<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', 'g[', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', 'g]', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
end

require('mason-lspconfig').setup_handlers({ function(server)
  local opt = {
    on_attach = on_attach,
    -- -- Function executed when the LSP server startup
    -- on_attach = function(client, bufnr)
    --   local opts = { noremap=true, silent=true }
    --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    --   vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)'
    -- end,
  }
  require('lspconfig')[server].setup(opt)
end })

nvim_lsp.rust_analyzer.setup{
  on_attach = on_attach,
}

nvim_lsp.sqls.setup{
  settings = {
    sqls = {
      connections = {
        {
          driver = 'postgresql',
          dataSourceName = 'host=localhost port=5432 user=app-user password=randompasswordldbname=tachyon sslmode=disable',
        },
      },
    },
  },
}


