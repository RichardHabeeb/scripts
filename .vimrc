execute pathogen#infect()


set number
set mouse=a
set cmdheight=2
" set smartcase
" set ignorecase

set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set hlsearch

set background=dark
colorscheme solarized
let g:airlne_theme='solarized'
filetype plugin on
syntax on

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

if exists('&colorcolumn')
	set colorcolumn=80
endif
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline
set spellfile=~/.vim/spell/en.utf-8.add

"set list
"set listchars=tab:>
