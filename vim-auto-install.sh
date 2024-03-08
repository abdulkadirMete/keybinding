#!/bin/bash

# Install Vim Plug
echo "Installing Vim Plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Git (assuming yum package manager)
# echo "Installing Git..."
# sudo yum install -y git    

# Create or overwrite .vimrc
echo "Creating .vimrc..."
cat > ~/.vimrc << EOF
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
set noswapfile
EOF

# Reload .vimrc
echo "Reloading .vimrc..."
vim -c ":so $MYVIMRC" -c ":PlugInstall" -c ":q" -c ":q"

# Install plugins
echo "Installing Vim plugins..."
vim -c ":PlugInstall" -c ":q" -c ":q"

echo "Setup complete!"
