let s:cpo_save=&cpo
set cpo&vim
inoremap <C-W> u
inoremap <C-U> u
xnoremap  c**P
nnoremap <NL> <Cmd>cnextzz
nnoremap  <Cmd>cprevzz
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nmap  d
tnoremap  
xnoremap  c__P
nnoremap  fr <Cmd>Pick resume
nnoremap  fh <Cmd>Pick help
nnoremap  fg <Cmd>Pick grep_live
nnoremap  ff <Cmd>Pick files
nnoremap  fd <Cmd>Pick diagnostic scope="all"
nnoremap  fc <Cmd>Pick git_commits
nnoremap  fb <Cmd>Pick buffers
nnoremap  fa <Cmd>Pick git_hunks scope="staged"
nnoremap  fG <Cmd>Pick grep pattern="<cword>"
nnoremap  fD <Cmd>Pick diagnostic scope="current"
nnoremap  fC <Cmd>Pick git_commits path="%"
nnoremap  f: <Cmd>Pick history scope=":"
nnoremap  f/ <Cmd>Pick history scope="/"
nnoremap  m :wall:make
nnoremap  e :Oil
nnoremap  c 1z=
xnoremap  e y:echo "gv
vnoremap  p "_dP
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
xnoremap <C-_> c__P
xnoremap <C-B> c**P
nnoremap <C-J> <Cmd>cnextzz
nnoremap <C-K> <Cmd>cprevzz
nmap <C-W><C-D> d
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap  u
inoremap  u
cnoremap wq x
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set complete=.,b,k
set completeopt=menu,noselect,menuone,popup
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set guicursor=
set helplang=en
set nohlsearch
set ignorecase
set lazyredraw
set path=.,,/usr/lib/gcc/**/include,**
set noruler
set runtimepath=~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/core/opt/vague.nvim,~/.local/share/nvim/site/pack/core/opt/gruvbox-material,~/.local/share/nvim/site/pack/core/opt/everforest,~/.local/share/nvim/site/pack/core/opt/neovim,~/.local/share/nvim/site/pack/core/opt/kanagawa.nvim,~/.local/share/nvim/site/pack/core/opt/jellybeans.vim,~/.local/share/nvim/site/pack/core/opt/gruvbox,~/.local/share/nvim/site/pack/core/opt/hforest,~/.local/share/nvim/site/pack/core/opt/iceberg.vim,~/.local/share/nvim/site/pack/core/opt/vim-wakatime,~/.local/share/nvim/site/pack/core/opt/mini.extra,~/.local/share/nvim/site/pack/core/opt/mini.pick,~/.local/share/nvim/site/pack/core/opt/oil.nvim,~/.local/share/nvim/site/pack/core/opt/typst-preview.nvim,~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/share/nvim/runtime,/usr/local/share/nvim/runtime/pack/dist/opt/matchit,/usr/local/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set scrolloff=4
set shiftwidth=4
set shortmess=OlFIoCTt
set noshowcmd
set noshowmode
set smartcase
set smartindent
set softtabstop=-1
set spelllang=en,es
set noswapfile
set tabstop=4
set termguicolors
set textwidth=80
set undofile
set updatetime=1000
set window=32
" vim: set ft=vim :
