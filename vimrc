colorscheme habamax

syntax on
filetype on
set number
set ruler
set autoindent
set cindent
set shiftwidth=4
set tabstop=4
set expandtab

" Custom swap file location. Note that vim does not create this directory for
" us, and it needs to already exist.
" Also note that if none of the environment variables can be resolved, Vim's
" default swap file location will be used, which is the same directory as
" where the file being edited is located.
if exists('$TMPDIR')
    " Unix-like systems, including macOS, Linux
    set directory=$TMPDIR//
elseif exists('$TMP')
    " Alternative Unix-like 
    set directory=$TMP//
elseif exists('$TEMP')
    " Windows
    set directory=$TEMP//
endif

" Store NetRW history file in custom location
let g:netrw_histfile = expand('~/.local/share/vim/.netrwhist')

" Store Vim session data (command history, marks, etc.) in custom location
set viminfofile=~/.local/share/vim/viminfo

" Add the autoload directory to the runtime path
set runtimepath+=~/.local/share/vim

" Install and run vim-plug on first run
if empty(glob('~/.local/share/vim/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

so ~/.vim/config/tabs.vim
so ~/.vim/config/keybindings.vim

