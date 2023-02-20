-- 全てのきのうにコメントをする
local options = {
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  hidden = true, -- バッファを隠す
  number = true, -- 行番号を表示
  autoindent = true, -- 自動インデント
  tabstop = 2, -- タブ幅
  shiftwidth = 2, -- インデント幅
  softtabstop = 2,  -- タブをスペースに変換する
  expandtab = true, -- タブをスペースに変換する
  smartindent = true, -- 智能インデント
  smarttab = true, -- 智能タブ
  shiftround = true, -- インデントを四捨五入する
  splitright = true, -- 分割したウィンドウを右に表示
  cursorline = true, -- カーソル行をハイライト
  clipboard = 'unnamedplus', -- クリップボードを共有
  hls = true, -- 検索時にハイライト
  list = true, -- 表示できない文字を表示
  wrap = true, -- 折り返し
  listchars = 'tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲', -- 表示できない文字を表示
  conceallevel = 0, -- コメントを隠す
  -- nohlsearch = true, 
  signcolumn = 'yes', -- シグンカラムを表示
  -- disable modeline
  modelines = 0, 
  -- nomodeline = true,

  matchpairs = '(:),{:},[:],<:>', -- 括弧の対応を表示

  timeoutlen = 500, -- タイムアウト時間
  updatetime = 300, -- カーソル移動時の更新時間
  backup = false, -- バックアップを作成しない
}

vim.opt.shortmess:append('c') -- メッセージを短くする

for k, v in pairs(options) do
	vim.opt[k] = v
end

