" Richard Esguerra's .vimrc
" inspired by <http://www.linuxjournal.com/article/3805>
" inspired by <http://www.stripey.com/vim/vimrc.html>

" enable 256 color support
set t_Co=256 " needed to show colors of themes

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" plugins installed via pathogen:
" https://github.com/altercation/vim-colors-solarized
" https://github.com/bling/vim-airline
" https://github.com/vim-airline/vim-airline-themes
" https://github.com/nvie/vim-flake8
" https://github.com/mkitt/tabline.vim
" https://github.com/digitaltoad/vim-jade
" https://github.com/pangloss/vim-javascript.git
" https://github.com/powerman/vim-plugin-autosess
"
" other plugins
" https://github.com/davidoc/taskpaper.vim.git

" put backups and swap files somewhere sane
set backupdir=~/.vim/tmp/backup,.
set directory=~/.vim/tmp/swap,.

" required for vim-powerline to work
set laststatus=2

" turn filetype and plugin scripts on; indent left out for momentary sanity
filetype plugin on

" sets tabwidth at 4 characters
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set md as markdown filetype and not modulo2 as per tpope advice here:
" https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" if a python file, expand tabs into spaces, set tabwidth at 4 characters, and
" set autoindent commands to 4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
" if a python file, highlight the 81st character with the colorcolumn color to
" assist with line length management
autocmd Filetype python call matchadd('ColorColumn', '\%81v', 100)

" if a jinja2 file, expand tabs into spaces, set tabwidth at 2 characters, and
" set autoindent commands to 2
autocmd Filetype htmldjango setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" if an html file, expand tabs into space, set tabwidth at 2 characters, and
" set autointend commands to 2
autocmd Filetype html setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" if a javascript file, expand tabs into space, set tabwidth at 2 characters, and
" set autointend commands to 2
autocmd Filetype javascript setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" if a jade file, expand tabs into space, set tabwidth at 2 characters, and
" set autointend commands to 2
autocmd Filetype jade setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" if a json file, expand tabs into space, set tabwidth at 2 characters, and
" set autointend commands to 2
autocmd Filetype json setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" if an elm file, expand tabs into space, set tabwidth at 2 characters, and
" set autointend commands to 2
autocmd Filetype elm setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

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
" autocmd BufNewFile * silent !screen -X title vim
" autocmd BufRead * silent !screen -X title %
" autocmd BufWrite * silent !screen -X title %
" autocmd VimLeave * silent !screen -X title bash

" close vim if the only window left open is a NERDTree
" from: https://github.com/scrooloose/nerdtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" powerline symbols
let g:airline_powerline_fonts=1
let ttimoutlen=50
set background=dark
colorscheme solarized
let g:airline_theme='solarized'

" when using splits, open the new split to the right and bottom
" instead of default, which pushes current working buffer to the right
" from: https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
set splitbelow
set splitright

" Strip trailing whitespace on saving php, javascript, css, scss files
autocmd BufWritePre *.php,*.css,*.scss,*.js,*.jsx %s/\s\+$//e

" directives that ansible set?
let PHP_autoformatcomment = 0

" highlighting the 81st column or the 81st character to help manage line length
" use :help ctermcolors if investigating color options
highlight ColorColumn ctermbg=LightYellow
" set cc=81
" call matchadd('ColorColumn', '\%81v', 100)
