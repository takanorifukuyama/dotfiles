# nvim

required

- dein
- neovim

read lua file

### Lua ファイルの読み込み

Vim script で書かれた設定の代わりに、lua で書かれた設定 を読ませることができます。 require
`require('file_path')` で lua ファイルをモジュールとして読み込みます。Neovim の runtimepath ディレクトリ内の lua ディレクトリに格納されている Lua ファイルを require で読み込めます。

例

- `lua require('plugins')`
  `~/.config/nvim/lua/plugins/init.lua` を読み込みます。
- `lua require('plugins.completion')`
  ~/.config/nvim/lua/plugins/completion.lua を読み込みます。
- `lua require('plugins/completion')`
  . or / どっちでも OK です。 . のほうがよく見ます。
