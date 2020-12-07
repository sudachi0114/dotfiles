" ----------
" vim configuration file
" ----------

"""""""""""""""
" color theme "
"""""""""""""""
syntax enable
" colorscheme molokai
" colorscheme shirotelin

""""""""""""""
" preference "
""""""""""""""
" title の表示
set title

" 行番号を表示
set number

" tab 幅
set tabstop=4
set shiftwidth=4

" 次の行を自動インデント
set smartindent

" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~

" 対応する括弧を表示
set showmatch matchtime=1
" 対応する括弧を強調表示
set showmatch

" ステータスバーを表示
set laststatus=2

""""""""""""
" 検索条件 "
""""""""""""
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch

source ~/.vimrc.maps
