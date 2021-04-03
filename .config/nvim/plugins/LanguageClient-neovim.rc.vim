set hidden
set updatetime=50
" 言語ごとに設定する
"
augroup filetype_rust
    autocmd!
    autocmd BufReadPost *.rs setlocal filetype=rust
augroup END

" julia
let g:default_julia_version = '1.5.3'

" Terraform >=0.12.0
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'beta', 'rls'],
    \ 'css': ['css-languageserver', '--stdio'],
    \ 'scss': ['css-languageserver', '--stdio'],
    \ 'sass': ['css-languageserver', '--stdio'],
    \ 'less': ['css-languageserver', '--stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'typescript': ['typescript-language-server', '--stdio'],
    \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
    \ 'typescriptreact': ['typescript-language-server', '--stdio'],
    \ 'vue': ['vls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'dart': ['dart' ,'$DART_SDK/snapshots/analysis_server.dart.snapshot', '--lsp'],
    \ 'go': ['gopls'],
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'haskell': ['haskell-language-server-wrapper', '--lsp'],
    \ 'terraform': ['terraform-ls', 'serve'], 
    \ 'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
    \     using LanguageServer;
    \     using Pkg;
    \     import StaticLint;
    \     import SymbolServer;
    \     env_path = dirname(Pkg.Types.Context().env.project_file);
    \
    \     server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
    \     server.runlinter = true;
    \     run(server);
    \ ']
    \ }

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let $RUST_BACKTRACE = 1
let g:LanguageClient_devel = 1 " Use rust debug build
let g:LanguageClient_loggingLevel = 'INFO' " Use highest logging level

let g:LanguageClient_loggingFile = expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')

let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 1
let g:LanguageClient_loadSettings=1
nnoremap <silent> [Space]h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> [Space]d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> [Space]r :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> [Space]f :call LanguageClient_textDocument_formatting()<CR>
nnoremap <silent> [Space]t :call LanguageClient_textDocument_typeDefinition()<CR>

" augroup LCHighlight
"     autocmd!
"     autocmd CursorHold,CursorHoldI *.py,*.c,*.cpp,*.rs,*.js,*.jsx,*.ts call LanguageClient#textDocument_documentHighlight()
" augroup END
"
