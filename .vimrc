let mapleader = ","

colorscheme molokai "other cool theme: badwolf

syntax enable

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar !

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files ~/.vim/indent
filetype plugin on      " load filetype-specific script ~/.vim/ftplugin

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to. !toTest

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level

" move vertically by visual line
nnoremap j gj
nnoremap k gk

execute pathogen#infect()

"nnoremap <leader>u :GundoToggle<CR>
nnoremap <C-u> :GundoToggle<CR>

"installer silversearcher-ag

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '˃'
let g:NERDTreeDirArrowCollapsible = '˅'

noremap <leader>c :set invnumber<CR>

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jacoblex set filetype=javascript
au BufNewFile,BufRead *.jacobgram set filetype=javascript
au BufNewFile,BufRead *.ts set filetype=javascript
