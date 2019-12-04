call plug#begin('~/.vim/plugged')
  
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()
 
"mapping 
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

let g:mapleader=','
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
set background=dark
syntax on
colorscheme gruvbox
