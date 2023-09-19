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
  -- conceallevel = 0, -- コメントを隠す
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



vim.cmd[[
  :command! UP call dein#remote_plugins()
  :command! CH checkhealth
  :command! Tnew tabnew | terminal
  
  highlight! Normal ctermbg=NONE guibg=NONE
  highlight! NonText ctermbg=NONE guibg=NONE
  highlight! LineNr ctermbg=NONE guibg=NONE
]]


vim.cmd[[
  " Highlight <>.
  set matchpairs+=<:>
  
  if exists('*FoldCCtext')
    " Use FoldCCtext().
    set foldtext=FoldCCtext()
  endif
  
  " Use vimgrep.
  " set grepprg=internal
  " Use grep.
  set grepprg=grep\ -inH
  
  " Exclude = from isfilename.
  set isfname-==
  
  " Keymapping timeout.
  set timeout timeoutlen=3000 ttimeoutlen=100
  
  " CursorHold time.
  set updatetime=100
  
  " Set swap directory.
  set directory-=.
  
  " Set undofile.
  set undofile
  let &g:undodir = &directory
  
  " Enable virtualedit in visual block mode.
  set virtualedit=block
  
  " Set keyword help.
  set keywordprg=:help
  
  " Disable packpath
  " set packpath=
  
  if has('nvim')
    " Display candidates by popup menu.
    set wildmenu
    set wildmode=full
    set wildoptions+=pum
  else
    " Display candidates by list.
    set nowildmenu
    set wildmode=list:longest,full
  endif
  " Increase history amount.
  set history=1000
  " Display all the information of the tag by the supplement of the Insert mode.
  set showfulltag
  " Can supplement a tag in a command-line.
  set wildoptions+=tagfile
  
  if has('nvim')
    set shada=!,'300,<50,s10,h
  else
    set viminfo=!,'300,<50,s10,h
  endif
  
  " Disable menu
  let g:did_install_default_menus = 1
  
  " Completion setting.
  set completeopt=noinsert,menuone,noselect
  " Don't complete from other buffer.
  set complete=.
  " Set popup menu max height.
  set pumheight=20
  
  " Report changes.
  set report=0
  
  " Maintain a current line at the time of movement as much as possible.
  set nostartofline
  
  " Splitting a window will put the new window below the current one.
  set splitbelow
  " Splitting a window will put the new window right the current one.
  set splitright
  " Set minimal width for current window.
  set winwidth=30
  " Set minimal height for current window.
  " set winheight=20
  set winheight=1
  " Set maximam maximam command line window.
  set cmdwinheight=5
  " No equal window size.
  set noequalalways
  
  " Adjust window size of preview and help.
  set previewheight=8
  set helpheight=12
  
  set ttyfast
  
  " When a line is long, do not omit it in @.
  set display=lastline
  " Display an invisible letter with hex format.
  "set display+=uhex
  
  " For conceal.
  set conceallevel=2 concealcursor=niv
  
  " set colorcolumn=79
  
  if exists('&inccommand')
    set inccommand=nosplit
  endif
  
  
  " Use cursor shape feature
  set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
  

  let g:terminal_scrollback_buffer_size = 3000
  
  "---------------------------------------------------------------------------
  " Disable default plugins
  
  " Disable menu.vim
  if has('gui_running')
     set guioptions=Mc
  endif
  
  let g:loaded_2html_plugin      = 1
  let g:loaded_logiPat           = 1
  let g:loaded_getscriptPlugin   = 1
  let g:loaded_gzip              = 1
  let g:loaded_man               = 1
  let g:loaded_matchit           = 1
  let g:loaded_matchparen        = 1
  let g:loaded_netrwFileHandlers = 1
  let g:loaded_netrwPlugin       = 1
  let g:loaded_netrwSettings     = 1
  let g:loaded_rrhelper          = 1
  let g:loaded_shada_plugin      = 1
  let g:loaded_spellfile_plugin  = 1
  let g:loaded_tarPlugin         = 1
  let g:loaded_tutor_mode_plugin = 1
  let g:loaded_vimballPlugin     = 1
  let g:loaded_zipPlugin         = 1
]]
