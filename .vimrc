"_     ___                    
" \   / (_)_ __ ___  _ __ ___ 
"\ \ / /| | '_ ` _ \| '__/ __|
" \ V / | | | | | | | | | (__ 
"  \_/  |_|_| |_| |_|_|  \___|
"
"= by Frogprog (2025) = 

" Just some basic vim configuration
" that I would like to have.

" ~ Look and feel ~
set number
set relativenumber 
set nocompatible
set hlsearch
set incsearch
set expandtab
set ic
set cursorline
set background=dark

" ~ Some key settings ~
set mouse=a
set tabstop=2
set shiftwidth=2
set laststatus=2
set tabpagemax=10
set hidden
set clipboard=unnamedplus
syntax on 

"* Including plugin file if exists *

if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

" ~ Keybinds for plugins ~

nnoremap <C-t> :NERDTreeToggle<CR>

" *Change look of existing plugins and not only*

let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
autocmd vimenter * ++nested colorscheme gruvbox

"AUtocmd FileType nerdtree nmap <buffer> <CR> :tabnew <C-R>=expand("%:p")<CR><CR>
