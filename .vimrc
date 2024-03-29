" vim-plug automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug config - start call
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'flazz/vim-colorschemes'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'

" vim-plug config - end call
call plug#end()

" nerd tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" auto close tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*java'
let g:closetag_shortcut = '>'

" Normal vim setup
syntax on
colo default
" colo molokai

" Make tab key function like emacs tab key
set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
set indentkeys=!<Tab>,o,O
map <Tab> i<Tab><Esc>^

" Set the intendation tab width
filetype indent on
set cinoptions=:0,(0,u0,W1s
set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=4

" Display the ruler (line counter, bottom panel)
set backspace=indent,eol,start
set ruler
let c_no_curly_error=1
