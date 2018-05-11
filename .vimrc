set nocompatible              " be iMproved, required
set number
set relativenumber
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
Plugin 'Xuyuanp/git-nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
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

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly = "RO"
let g:NERDTreeWinPos = "left"
let g:python_highlight_all = 1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=DarkGray   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=Gray       ctermbg=0
set hlsearch
set incsearch
" control p setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

" YCM setting
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_max_num_candidates = 5
let g:ycm_python_binary_path = 'python3'
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_show_diagnostics_ui = 0

" Nerdcommenter setting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'

" Airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1


" General mapping
map <C-t> :IndentLinesToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-c> :NERDTreeClose<CR>

" Normal custom keys
nnoremap <S-Up> :resize +5<CR>
nnoremap <S-Down> :resize -5<CR>
nnoremap <S-Left> :vertical resize -5<CR>
nnoremap <S-Right> :vertical resize +5<CR>
nnoremap nl o<Esc>
nnoremap Nl O<Esc>
nnoremap <C-G> :YcmCompleter GoTo<CR>
nnoremap <F8> :TagbarToggle<CR>

" Insert mode custom keys
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Visual mode custom keys
" / search selection
vnoremap // y/<C-R>"<CR>"
" substitute in selection
vnoremap ss :s/\%V//g <Left><Left><Left><Left>

" final setting
set showcmd
set cursorline
colorscheme xoria256
highlight Visual cterm=reverse ctermbg=NONE gui=reverse
highlight Pmenu ctermfg=22 ctermbg=18 guifg=#005f00 guibg=#00005f
highlight PmenuSel ctermfg=22 ctermbg=144 guifg=#005f00 guibg=#afaf87 
set guifont=Monospace\ 11
set mouse=a

