" Richard Esguerra's .vimrc
" inspired by <http://www.linuxjournal.com/article/3805>
" inspired by <http://www.stripey.com/vim/vimrc.html>

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" required for vim-powerline to work
set laststatus=2

" turn filetype and plugin scripts on; indent left out for momentary sanity
filetype plugin on

" sets tabwidth at 4 characters
set tabstop=4

" set shiftwidth=8
" set expandtab

" if a python file, expand tabs into spaces, set tabwidth at 4 characters, and
" set autoindent commands to 4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" turn on autoindent
set autoindent

" always use line numbers
set number

" use incremental search
set incsearch

" use search highlighting; highlight items you search for
set hlsearch

" use case insensitive search by default; remove with :set noignorecase
set ignorecase

" use syntax highlighting
syntax enable

" always show tab bar
set showtabline=2

" set command line height to 2
set ch=2

" soft wrap = wrap to a new line between words, not between characters
" set wrap linebreak textwidth=0

" highlight the current line
set cursorline

" color settings for cursor line highlighting
" hi CursorLine cterm=NONE ctermbg=darkgrey
" old setting: hi CursorLine   cterm=NONE ctermbg=darkgrey
" Full example parameters: hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred

" color settings for column line highlighting
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred

" type :gf over filename to get list of colors
" $VIMRUNTIME/rgb.txt

" send commmands to change the title of the screen page when opening or
" closing a file
" !screen -X title @%
" :au[tocmd] [group] {event} {pat} [nested] {cmd}
autocmd BufNewFile * silent !screen -X title vim
autocmd BufRead * silent !screen -X title %
autocmd BufWrite * silent !screen -X title %
autocmd VimLeave * silent !screen -X title bash

" close vim if the only window left open is a NERDTree
" from: https://github.com/scrooloose/nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" powerline symbols
let g:airline_powerline_fonts=1
let ttimoutlen=50
colorscheme solarized
set background=dark
let g:airline_theme='solarized'
set t_Co=256 " needed to show colors of themes
