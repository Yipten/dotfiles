""""""""""""""
" formatting "
""""""""""""""
" copy indent from current line when starting a new line
set autoindent
" more 'smart' indent options for new lines (i.e. between curly braces)
set smartindent
" prevent jumping to first column when typing '#'
inoremap # X#
" tabs are 4 spaces wide
set tabstop=4
" tabs are 4 spaces wide when editing
set softtabstop=4
" lines are shifted 4 spaces at a time (<< or >>)
set shiftwidth=4
" shift to nearest multiple of 'shiftwidth'
set shiftround
" tabs are spaces
set expandtab
" maximum number of characters per line
set textwidth=0

""""""""""""""
" appearance "
""""""""""""""
" show line numbers
set number
" always show tab line
set showtabline=2
" syntax highlighting
syntax on
" line wrapping
set wrap
" don't break words when line wrapping
set linebreak
" text to show at beginning of wrapped lines
let &showbreak='↳ '

""""""""""
" colors "
""""""""""
" inactive tabs
highlight TabLine cterm=none ctermbg=darkgray ctermfg=lightgray
" active tab
highlight TabLineSel cterm=bold ctermbg=none ctermfg=lightgray
" remainder of tab line
highlight TabLineFill cterm=bold ctermbg=darkgray
" focused window status line
highlight StatusLine cterm=bold ctermbg=darkgray ctermfg=lightgray
" unfocused window status line
highlight StatusLineNC cterm=bold ctermbg=darkgray ctermfg=lightgray
" focused terminal status line
highlight StatusLineTerm cterm=bold ctermbg=darkgreen ctermfg=black
" unfocused terminal status line
highlight StatusLineTermNC cterm=bold ctermbg=darkgreen ctermfg=black
" vertical window split border
highlight VertSplit ctermbg=black ctermfg=black

""""""""""
" search "
""""""""""
" case-insensitive when all lowercase
set ignorecase
" case-sensitive when some uppercase
set smartcase
" highlight text while typing
set incsearch

"""""""""""""
" interface "
"""""""""""""
" automatically create indent-based folds
set foldmethod=indent
" unfold all folds by default
set foldlevelstart=99
" user-friendly dialog when closing unsaved file
set confirm
" persistent undo history
set undofile
" directory for storing undo files
set undodir=$HOME/.vim/undo/
" number of commands to store in history
set history=1000
" show command auto completion menu
set wildmenu
" prevent lag when using O
set timeoutlen=3000
set ttimeoutlen=100
" make backspace key work
set backspace=indent,eol,start
