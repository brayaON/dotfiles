" Share the clipboard w/o using " or * registers
set clipboard+=unnamedplus
set autoindent
set history=50
set list
set number
set shiftwidth=4
set background=dark
set showtabline=1

filetype plugin indent on

" Mappings
map +l i{<Esc>ea}<Esc>
map +p i(<Esc>ea)<Esc>
map +c i"<Esc>ea"<Esc>

write
