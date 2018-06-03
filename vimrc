" Vundle setting {
    set nocompatible              " required
    filetype off                  " required
    
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    
    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    
    " Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
    
    " Code Fold
    Plugin 'tmhedberg/SimpylFold'
    Plugin 'vim-scripts/indentpython.vim'
    Plugin 'nathanaelkane/vim-indent-guides'
    
    " Code Complete
    Plugin 'davidhalter/jedi-vim'    
    
    " Color
    Plugin 'git@github.com:fugalh/desert.vim.git'       
    Plugin 'git@github.com:sickill/vim-monokai.git'
    
    " Syntax
    " Plugin 'scrooloose/syntastic'
    " let g:syntastic_check_on_open = 0
    
    " File
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    
    " Status Bar
    " Plugin 'bling/vim-airline'
    " Plugin 'vim-airline/vim-airline-themes'
    Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


    " Tarbar
    Plugin 'kien/ctrlp.vim'
    Plugin 'majutsushi/tagbar'
    

    " Git
    
    " Others
    " Python
    
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    
    
" }


"" Plug {
"     call plug#begin('~/vim/plugged')
      " Place plugin bellow
"     Plug 'junegunn/vim-easy-align'
"     call plug#end()
"" }

" Basic setting
set number
set nowrap
set smarttab
set expandtab
set tabstop=4
set enc=utf-8
set laststatus=2
set shiftwidth=4
set virtualedit+=onemore


" Color Scheme
" colorscheme monokai
colorscheme desert

" Map esc to captical
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" File 
nnoremap <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Codel foliding
set foldmethod=indent
" set foldmethod=syntax
set foldlevel=99
set nofoldenable
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
" indent_guides setting
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
" let g:indent_guides_enable_on_vim_startup=1


" Indent style
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

hi BadWhitespace guifg=gray guibg=red ctermfg=gray ctermbg=black
au BufRead,BufNewFile *.py,*.js match BadWhitespace /\s\+$/

" Code Complete


" Syntax
syntax enable
syntax on	


" Cursor Style
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


" Syntax Highlight
let python_highlight_all=1


" TagBar {
    nmap <F8> :TagbarToggle<CR>
" }

