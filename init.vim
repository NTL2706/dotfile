
":::instalacion de plugins:::
"
call plug#begin('~/.config/nvim/plugged') 	"directorio donde se van a instalar los plugins

"plugins
Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'luochen1990/rainbow'              "highlight rainbowPlug 'sheerun/vimr'
Plug 'sheerun/vim-polyglot'       "ligatures for font
Plug 'mattn/emmet-vim' 			"emmet para diseño web

"Theme 
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'dracula/vim', { 'as': 'dracula' }  "themes dracula for nvim
Plug 'ryanoasis/vim-devicons'       "icon for vim

"File brower
Plug 'preservim/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
Plug 'tiagofumo'
          \ .'/vim-nerdtree-syntax-highlight'
Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 

"navigate seamlessly
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos

"Plugin code 
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"autocompletado inteligente
Plug 'tpope/vim-commentary'      "comment code 

" For javascript
Plug 'pangloss/vim-javascript'         "highlight syntax for js 

" For java


" File search
Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
Plug 'junegunn/fzf.vim'

" Auto-save
Plug '907th/vim-auto-save'

" Git


call plug#end() 			"cerramos el llamado de los plugins

"==============================================================================
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"CONFIGURACIONES BASICAS 
set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=UTF-8			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=4 				"la indentación genera 4 espacios
set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set tabstop=4 				"set tab 4 space
set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamedplus			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y

":::instalacion de plugins:::
"
set go+=a               " Visual selection automatically copied to the clipboard

"Setting scrolling
set mouse=a                 "mouse suppot
set sidescroll=1
set scrolloff=3             "number of lines shown when scrolling
"Setting move one line
nnoremap H 0
vnoremap H 0
nnoremap L $
vnoremap L $
set autowrite               "autosave 

"Configuracion del tema
set termguicolors 			"activa el true color en la terminal
colorscheme dracula 			"activar el tema dracula


"Set termguicolors           "set font
set nocompatible
set guifont=Fira\ Code:h13
let g:polyglot_disable_fira_ligatures = 0

"==============================================================================
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"Load file config setting

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
"
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"configuracion autosave" 
let g:auto_save = 1  " enable AutoSave on Vim startup

"configuracion de emmet-vim
let g:user_emmet_leader_key=',' 	"mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.

"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>

"MY SETTING
"config highlight syntax for js
let g:jsx_ext_required = 1

"configuration indent-rainbow 
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" Enable the Indent Rainbow plugin
set list lcs=tab:..

"setting tabfile
nnoremap <Tab> :bnext<CR>
"setting open file fzf
nnoremap 2 :Files<CR>


lua << EOF
    require'glow-hover'.setup {
        -- The followings are the default values
        max_width = 50,
        padding = 10,
        border = 'shadow',
        glow_path = 'glow'
    }
EOF
highlight! HoverFloatBorder ctermbg=None ctermfg=255

