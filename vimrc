vimrc 常用配置
" open syntax
syntax on
" set not show line number can change by :set nu
:set nonu
" set show line number when in edit
:set ruler
" set tab button stop
" default tabstop=8
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab
" use keyboard F11 to change paste mode
:set pastetoggle=<F11>
" normal is :set nolist | show hide is :set invlist
:set nolist

" fix mac vim keyboard delete can not delete error, so as set backspace=indent,eol,start
set backspace=2
" ------------
" install plug-in manager see https://github.com/VundleVim/Vundle.vim

 
