"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

"""" enable the theme
syntax enable
colorscheme shades_of_purple

"""" enable for Airline
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
