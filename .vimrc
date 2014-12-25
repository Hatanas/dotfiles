" ------------------------------
" vi との互換性を解除
" ------------------------------
set nocompatible


" ------------------------------
" 表示関係
" ------------------------------
" 行番号の表示
set number
" カーソル行をハイライトしない
set nocursorline
" カーソル列をハイライトしない
set nocursorcolumn
" ステータス行を常に表示
set laststatus=2
" メッセージ表示欄を設定
set cmdheight=2
" 対応する括弧を強調
set showmatch
" ヘルプを画面いっぱいに
set helpheight=999
" 不可視文字を表示
set list
" 不可視文字の設定
set listchars=tab:>-,eol:$,extends:>,precedes:<
" 上下スクロールの視界を確保
set scrolloff=8
" 左右スクロールの視界を確保
set sidescrolloff=16
" 左右スクロールの移動文字数
set sidescroll=1
" 構文に色を付ける
syntax on
" 256 色に対応させる
set t_Co=256
" カラースキーマ設定
" Windows は default
" それ以外は hybrid
if has('win32') || has('win64')
    colorscheme default
else
    colorscheme hybrid
endif
" ステータス行の設定
set statusline=%t\ %m\ %r\ %h\ %w\ %y\ %=L%-5l\ C%-5c\ %4P


" ------------------------------
" 操作関係
" ------------------------------
" バックスペースの影響範囲を設定
set backspace=indent,eol,start
" 行頭行末の左右移動で行を移動する
set whichwrap=b,s,h,l,<,>,[,]
" タブ文字を空白文字に変換
set expandtab
" タブ文字の幅
set tabstop=4
" 自動インデントの幅
set shiftwidth=4
" 連続空白に対するタブキーやバックスペースキーの移動量
set softtabstop=4
" 改行前のインデントを継続
set autoindent
" オートインデントをする
set smartindent
" コマンドラインでの入力補完
set wildmenu
set wildmode=list:longest,full


" ------------------------------
" 検索と置換関係
" ------------------------------
" 検索文字のハイライト
set hlsearch
" リアルタイムサーチをする
set incsearch
" 大文字小文字を区別しない
set ignorecase
" 大小文字混在時に区別する
set smartcase
" 最後尾まで行ったら先頭に戻る
set wrapscan
" 置換の時 g コマンドをデフォルトで無効
set nogdefault


" ------------------------------
" 文字コード関係
" ------------------------------
" Vim でつかう文字コード
set encoding=utf-8
" ファイルの文字コード
set fileencoding=utf-8
" ターミナルの文字コード
" set termencoding=utf-8
" 対応する文字コードリスト
set fileencodings+=utf-8,euc-jp,iso-2022-jp,ucs-2le,ucs-2,cp932
" Windows のとき日本語を OFF
if has('win32') || has('win64')
    set iminsert=0
    set imsearch=0
endif


" ------------------------------
" 環境関係
" ------------------------------
" 未保存のファイルがあっても新しいのを開ける
set hidden
" 保存の確認をする
set confirm
" オートロードをする
set autoread
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" アンドゥファイルを作らない
set noundofile
" OS のクリップボードを使えるようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を有効化
set mouse=a
" Windows の区切り文字を / にする
set shellslash


" ------------------------------
" KaoriYaプラグインの無効化
" ------------------------------
if has('kaoriya')
    let g:no_vimrc_example=0
    let g:vimrc_local_finish=1
    let g:gvimrc_local_finish=1
    
    " autodate.vim
    let plugin_autodate_disable=1
    " cmdex.vim
    let plugin_cmdex_disable=1
    " dicwin.vim
    let plugin_dicwin_disable=1
    " format.vim
    let plugin_format_disable=1
    " hz_ja.vim
    let plugin_hz_ja_disable=1
    " scrnmode.vim
    let plugin_scrnmode_disable=1
    " verifyenc.vim
    let plugin_verifyenc_disable=1
endif


" ------------------------------
" NeoBundle の設定
" ------------------------------
" bundle で管理するディレクトリを指定
set runtimepath+=$HOME/.vim/bundle/neobundle.vim

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle/'))

" NeoBundle を NeoBundle 自身で管理
NeoBundleFetch 'Shougo/neobundle.vim'

" ---------- 追加するプラグイン ----------
" NERDTree
NeoBundle 'scrooloose/nerdtree'
" Unite
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" ------------ カラースキーム ------------
" hybrid
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインを通知する
NeoBundleCheck
