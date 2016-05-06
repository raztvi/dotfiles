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
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
let g:Powerline_symbols = 'fancy'
autocmd vimenter * NERDTree
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
