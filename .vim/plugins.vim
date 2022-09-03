set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'

Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-eunuch'
Plugin 'vim-airline/vim-airline'

call vundle#end()            
filetype plugin indent on    
