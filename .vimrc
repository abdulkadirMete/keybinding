" install plugvim
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dmerejkowsky/vim-ale'
Plug 'ervandew/supertab'
call plug#end()

map <F2> :NERDTreeToggle<CR>
inoremap jj <Esc>
nnoremap <C-p> :Files<Cr>
