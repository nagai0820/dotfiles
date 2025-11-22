" ========================================
" 基本設定
" ========================================
set nocompatible              " Vi互換モードをオフ
set encoding=utf-8            " 文字エンコーディング
set fileencoding=utf-8        " ファイル保存時のエンコーディング

" ========================================
" 表示設定
" ========================================
syntax on                     " シンタックスハイライト
set number                    " 行番号を表示
set relativenumber            " 相対行番号を表示
set cursorline                " カーソル行をハイライト
set showmatch                 " 対応する括弧をハイライト
set matchtime=1               " 括弧の対応表示時間
set laststatus=2              " ステータスラインを常に表示
set ruler                     " カーソル位置を表示
set showcmd                   " 入力中のコマンドを表示
set wildmenu                  " コマンドライン補完を強化
set wildmode=longest:full,full

" ========================================
" カラースキーム
" ========================================
set background=dark           " ダークテーマ
" colorscheme デフォルトを使用（お好みで変更可能）

" ========================================
" インデント設定
" ========================================
set autoindent                " 自動インデント
set smartindent               " スマートインデント
set expandtab                 " タブをスペースに展開
set tabstop=4                 " タブ幅
set shiftwidth=4              " 自動インデント幅
set softtabstop=4             " バックスペースで削除するスペース数

" ========================================
" 検索設定
" ========================================
set incsearch                 " インクリメンタルサーチ
set hlsearch                  " 検索結果をハイライト
set ignorecase                " 大文字小文字を区別しない
set smartcase                 " 大文字が含まれる場合は区別する
" ESC連打で検索ハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR>

" ========================================
" 編集設定
" ========================================
set backspace=indent,eol,start " バックスペースの挙動
set whichwrap=b,s,h,l,<,>,[,]  " カーソルの回り込み
set clipboard=unnamedplus      " システムクリップボードを使用
set mouse=a                    " マウスを有効化

" ========================================
" バックアップ・スワップ設定
" ========================================
set nobackup                  " バックアップファイルを作らない
set noswapfile                " スワップファイルを作らない
set noundofile                " undoファイルを作らない

" ========================================
" ファイル設定
" ========================================
set autoread                  " 外部でファイルが変更されたら自動で読み込む
set hidden                    " バッファを隠せるようにする

" ========================================
" キーマッピング
" ========================================
" jj で Escapeモードに戻る
inoremap jj <Esc>

" 行移動をビジュアル行で
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" タブ操作
nnoremap <C-t> :tabnew<CR>
nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprev<CR>

" 分割ウィンドウ移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ========================================
" ステータスライン設定
" ========================================
set statusline=%F              " ファイルパス
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}] " エンコーディング
set statusline+=\ [%{&fileformat}] " ファイルフォーマット
set statusline+=%=             " 右寄せ
set statusline+=\ [%l/%L]      " 行番号/総行数
set statusline+=\ [%p%%]       " ファイル内の位置（パーセント）

" ========================================
" その他の便利な設定
" ========================================
set scrolloff=5               " スクロール時の余白行数
set sidescrolloff=5           " 横スクロール時の余白
set visualbell                " ビープ音を視覚表示に
set t_vb=                     " ビジュアルベルを無効化
set display=lastline          " 長い行を最後まで表示
set pumheight=10              " 補完メニューの高さ

" ファイルタイプ別設定
filetype plugin indent on

" Python用設定
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" JavaScript/TypeScript用設定
autocmd FileType javascript,typescript,json setlocal tabstop=2 shiftwidth=2 softtabstop=2

" HTML/CSS用設定
autocmd FileType html,css,scss setlocal tabstop=2 shiftwidth=2 softtabstop=2
