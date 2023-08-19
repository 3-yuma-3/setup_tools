#!/bin/zsh

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# customize vim
## https://qiita.com/iwaseasahi/items/0b2da68269397906c14c
## https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301

printf "${ESC}[33m%s${ESC}[m\n" 'start vimrc setting'

touch ~/.vimrc
cat - << EOS >> ~/.vimrc
" vim の矩形選択で文字が無くても右へ進める
set virtualedit=onemore
"文字コードをUFT-8に設定
set fenc=utf-8
" 編集中のファイルが変更されたら自動で読み直す
set autoread


"----------------------------------------
" 検索
"----------------------------------------
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


"----------------------------------------
" 表示設定
"----------------------------------------
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" 対応する括弧やブレースを表示
set showmatch matchtime=1
" インデント方法の変更
set cinoptions+=:0
" メッセージ表示欄を2行確保
set cmdheight=2
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 省略されずに表示
set display=lastline
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~
" コマンドラインの履歴を10000件保存する
set history=10000
" コメントの色を水色
hi Comment ctermfg=3
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2
" ファイル内にあるタブ文字の表示幅
set tabstop=2
" 対応する括弧を強調表示
set showmatch
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タイトルを表示
set title
" 行番号の表示
set number
" 現在の行を強調表示
set cursorline
" シンタックスハイライト
syntax on
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
EOS
