""" General Settings
set autoindent
set showmatch
set ruler
set laststatus=2
set ts=4 sts=4 sw=4 expandtab
set showmode
set history=1000
set number numberwidth=3
set encoding=utf-8
set wrap linebreak
set nocompatible
set hidden
let mapleader = ","


""" Packages
autocmd!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle - required. 
Bundle 'gmarik/vundle'

" Use Git inside vim easily
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-git.git'

" Highlight css colors
Bundle 'ap/vim-css-color.git'

" Python tab-completion with jedi
Bundle 'davidhalter/jedi-vim'
let g:jedi#use_tabs_not_buffers = 0
autocmd FileType python setlocal completeopt-=preview

" Nice status bar
Bundle 'Lokaltog/vim-powerline.git'
let g:Powerline_stl_path_style='relative'
let g:Powerline_symbols='compatible'

" Put in closing brackets automatically
Bundle 'Townk/vim-autoclose.git'

" PEP8-like indentation for python
Bundle 'hynek/vim-python-pep8-indent.git'

" Less syntax highlighting
Bundle 'groenewege/vim-less'

" Nerdtree - a tree explorer
Bundle "scrooloose/nerdtree.git"
noremap <silent> <leader>1 :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\~$', '\.pyc']

" Supertab - allows you to use <tab> for all insert completions
Bundle 'ervandew/supertab.git'

" Syntax highlighting interface
Bundle 'scrooloose/syntastic.git'
let g:locliststate=1
let g:syntastic_enable_ballons=0
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=0
let g:syntastic_enable_auto_jump=1
let g:syntastic_mode_map = { 'mode': 'passive',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': ['python', 'javascript'] }
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers=['jshint']

let g:syntastic_enable_highlighting=0
let g:syntastic_on=0
function! SyntasticToggle()
    let g:syntastic_enable_highlighting=g:syntastic_on
    SyntasticCheck
    if g:syntastic_on
        lclose
    end
    let g:syntastic_on=!g:syntastic_on
endfunction
nnoremap <silent> <leader>e :call SyntasticToggle()<CR>


""" Key Mappings

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

inoremap jk <ESC>
inoremap <ESC> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

set background=dark
colorscheme solarized
syntax enable 
filetype plugin indent on
