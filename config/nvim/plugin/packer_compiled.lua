-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/takanorifukuyama/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/takanorifukuyama/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/takanorifukuyama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/takanorifukuyama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/takanorifukuyama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["accelerated-jk"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["context_filetype.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/context_filetype.vim",
    url = "https://github.com/Shougo/context_filetype.vim"
  },
  ["ddc-around"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-around",
    url = "https://github.com/Shougo/ddc-around"
  },
  ["ddc-converter_remove_overlap"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-converter_remove_overlap",
    url = "https://github.com/Shougo/ddc-converter_remove_overlap"
  },
  ["ddc-matcher_head"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-matcher_head",
    url = "https://github.com/Shougo/ddc-matcher_head"
  },
  ["ddc-nvim-lsp"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-nvim-lsp",
    url = "https://github.com/Shougo/ddc-nvim-lsp"
  },
  ["ddc-sorter_rank"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-sorter_rank",
    url = "https://github.com/Shougo/ddc-sorter_rank"
  },
  ["ddc-ui-native"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc-ui-native",
    url = "https://github.com/Shougo/ddc-ui-native"
  },
  ["ddc.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddc.vim",
    url = "https://github.com/Shougo/ddc.vim"
  },
  ["ddu-commands.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-commands.vim",
    url = "https://github.com/Shougo/ddu-commands.vim"
  },
  ["ddu-filter-matcher_substring"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-filter-matcher_substring",
    url = "https://github.com/Shougo/ddu-filter-matcher_substring"
  },
  ["ddu-kind-file"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-kind-file",
    url = "https://github.com/Shougo/ddu-kind-file"
  },
  ["ddu-source-buffer"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-source-buffer",
    url = "https://github.com/shun/ddu-source-buffer"
  },
  ["ddu-source-colorscheme"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-source-colorscheme",
    url = "https://github.com/4513ECHO/ddu-source-colorscheme"
  },
  ["ddu-source-file"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-source-file",
    url = "https://github.com/Shougo/ddu-source-file"
  },
  ["ddu-source-file_rec"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-source-file_rec",
    url = "https://github.com/Shougo/ddu-source-file_rec"
  },
  ["ddu-ui-ff"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu-ui-ff",
    url = "https://github.com/Shougo/ddu-ui-ff"
  },
  ["ddu.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/ddu.vim",
    url = "https://github.com/Shougo/ddu.vim"
  },
  ["denops-popup-preview.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/denops-popup-preview.vim",
    url = "https://github.com/matsui54/denops-popup-preview.vim"
  },
  ["denops-signature_help"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/denops-signature_help",
    url = "https://github.com/matsui54/denops-signature_help"
  },
  ["denops.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/denops.vim",
    url = "https://github.com/vim-denops/denops.vim"
  },
  ["deol.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/deol.nvim",
    url = "https://github.com/Shougo/deol.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gundo.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/gundo.vim",
    url = "https://github.com/sjl/gundo.vim"
  },
  indentline = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/indentline",
    url = "https://github.com/yggdroot/indentline"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/lexima.vim",
    url = "https://github.com/cohama/lexima.vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neosnippet = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/neosnippet",
    url = "https://github.com/Shougo/neosnippet"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/neosnippet-snippets",
    url = "https://github.com/Shougo/neosnippet-snippets"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gfm-syntax"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-gfm-syntax",
    url = "https://github.com/rhysd/vim-gfm-syntax"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-quickrun"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-quickrun",
    url = "https://github.com/thinca/vim-quickrun"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-themis"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-themis",
    url = "https://github.com/thinca/vim-themis"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vimproc.vim"] = {
    loaded = true,
    path = "/Users/takanorifukuyama/.local/share/nvim/site/pack/packer/start/vimproc.vim",
    url = "https://github.com/Shougo/vimproc.vim"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
