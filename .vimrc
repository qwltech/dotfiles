" Personal .vimrc file. Note that vim first executes the system rc file,
" located at /etc/vim/vimrc before executing this rc file. It is very often
" instructive to see what is in /etc/vim/vimrc so you know what customizations
" have been applied by the vendor of your OS.

set nocompatible " Turn off legacy Vi compatibility (this is first because it sets many options)

" Colour schemes and such
syntax enable             " syntax highlighting
"colorscheme solarized     " Ahh, solarized. http://ethanschoonover.com/solarized
"call togglebg#map("<F5>") " Press F5 to toggle Solarized light/dark

" Turn on filetype detection, plugins for specific filetypes, and indenting
" for specific filetypes
filetype plugin indent on

" Search options
set hlsearch   " highlight matches, for better or worse
set incsearch  " incremental search: jump to results as search is typed out
set ignorecase " case-insensitive search...
set smartcase  " ...unless the search pattern contains uppercase!

" Tab options
set expandtab    " when a tab is typed, write the appropriate number of spaces instead
set tabstop=4    " displayed width of tabs that are in files despite expandtab
set shiftwidth=4 " size of autoindent steps

set mouse=a
set hidden    " not really sure what this does, even after reading the help
set noswapfile

" Display options
"
" Philosophy on setting nowrap: combined with a terminal that switches font
" sizes easily, like GNOME terminal, this allows us to get used to the
" horizontal and vertical structure of a codebase, without having to re-learn
" what the code looks like every time the terminal width changes. Now, we can
" set wrap where it's really needed, like text files.

set list " enable display of nonprinting chars.
set listchars=tab:\|+,trail:_ " |+++ for a tab, _ for trailing space
set nowrap " don't wrap lines
set number " show line numbers
set ruler  " show cursor position
set showbreak= " prepend nothing to continuation lines
set linebreak
set showcmd " show command as it's being typed
set showmatch  " show matching brackets

" Bottom of screen options
set laststatus=2 " show status line, even if there is only one window
set wildmenu     " enhanced autocompletion

" type \cc to save and compile LaTeX
autocmd FileType tex map <Leader>cc :w \| !pdflatex %<CR>

" type \cc to save and compile SCSS
autocmd FileType scss map <Leader>cc :w \| !compass compile<CR>

" type \mm to make
map <Leader>mm :w \| :make<CR>

" don't treat <> as match in PHP
autocmd FileType php set matchpairs-=<:>

" type \ga to add this file to the current git repo
map <Leader>ga :w \| :!git add %<CR>

execute pathogen#infect()
