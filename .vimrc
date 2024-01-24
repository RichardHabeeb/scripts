execute pathogen#infect()

filetype plugin indent on
syntax on

set number
set mouse=a
set cmdheight=2
set hlsearch

set shiftwidth=4
set tabstop=4
"set softtabstop=4

"set a new-line's indentation level intelligently (based on source).
set smartindent

"make backspace delete shiftwidth worth of space
set smarttab

set background=dark
colorscheme solarized
let g:airlne_theme='solarized'

"BetterWhitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:show_spaces_that_precede_tabs=1

if exists('&colorcolumn')
	set colorcolumn=80
endif

set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline
set spellfile=~/.vim/spell/en.utf-8.add


set listchars=tab:\⇥\ ,trail:·,extends:>,precedes:<,nbsp:+
"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:>
set list

" Exec local .vimrc
set exrc
set secure
