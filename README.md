# vimsettings
Vim vimrc and other vims

Setup files
Vim Bootstrap 

https://vim-bootstrap.com/

Vim Bootstrap is a web app that helps you to quickly generate a new .vimrc . 
It allows you to select from a list of programming languages, 
then creates a file that includes the appropriate NeoBundle dependencies. 


Pathogen

https://github.com/tpope/vim-pathogen

vimrc settings
execute pathogen#infect()
syntax on
filetype plugin indent on

Airline

https://github.com/vim-airline/vim-airline

AutoComplPop

https://github.com/vim-scripts/AutoComplPop

For HTML, CSS, and Javascript

HTML5

https://github.com/othree/html5.vim

CSS3

https://github.com/othree/csscomplete.vim

Javascript

https://github.com/othree/jspc.vim

delimitMate

https://github.com/Raimondi/delimitMate

emmet vim

https://github.com/mattn/emmet-vim

NERDTree

https://github.com/scrooloose/nerdtree

Syntastic

https://github.com/vim-syntastic/syntastic

Supertab

https://github.com/ervandew/supertab

YouCompleteMe

Optional

Do not install Supertab and AutocomplPop

Before installing YCM be sure to have the ff: (in OpenSuse 15)

python-devel
python3-devel
C/C++ Development (For Programming C)

To install

Search for C/C++ Development
sudo zypper se -t pattern devel_C_C++

if not installed then

sudo zypper in -t pattern devel_C_C++

then

sudo zypper in python-devel python3-devel

then

git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all (Warning: This will install 390MB of data)

