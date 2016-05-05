set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
:set ruler
:set number
execute pathogen#infect()
inoremap {<CR> {<CR>}<C-o>O
syntax enable
set background=dark
colorscheme solarized
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
:set guifont=Bitstream\ Vera\ Sans\ Mono:h18
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
