set showcmd
set nocompatible              " be iMproved, required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-python/python-syntax'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Xuyuanp/git-nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-indentwise'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
map <C-n> :NERDTreeToggle<CR>
map <C-c> :NERDTreeClose<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly = "RO"
let g:python_highlight_all = 1

map <C-t> :IndentGuidesToggle<CR>
colorscheme Monokai

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=dark   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4
highlight Pmenu ctermfg=16 ctermbg=23 guifg=#000000 guibg=#005f5f
execute pathogen#infect()
call pathogen#helptags()
set hlsearch
set incsearch
set nu

" control p setting
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
