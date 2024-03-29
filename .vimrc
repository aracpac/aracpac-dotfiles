so ~/.vim/plugins.vim

" plugins
:silent! colorscheme PaperColor
let g:airline_powerline_fonts = 1
let g:gitgutter_terminal_reports_focus=0
let NERDTreeShowHidden=1

" shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" sets
set t_Co=256
set background=dark
set backspace=indent,eol,start
set encoding=UTF-8
set expandtab
set laststatus=2
set number
set shiftwidth=4
set tabstop=4
set undofile
set undodir=~/.vim/undodir
set updatetime=100
syntax on

" return to last position if it is stored
if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
