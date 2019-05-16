" Syntax
Plug 'juvenn/mustache.vim'
Plug 'chr4/nginx.vim'
Plug 'tpope/vim-markdown'
Plug 'scrooloose/nerdtree'

let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeWinPos = 'left'
let g:nerdtree_tabs_open_on_gui_startup = 0
nmap <silent> <f2> :NERDTreeToggle<CR>
nmap <silent> ,<f2> :NERDTreeFind<CR>

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = '~/.vim-tmp/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn\|vendor\|node_modules$',
\ 'file': '\.exe$\|\.so$\|\.dll$',
\ 'link': 'some_bad_symbolic_links',
\ }
map <silent>,<C-p> :CtrlPClearCache<CR>:CtrlP<CR>

Plug 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<space>'

Plug 'w0rp/ale'
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'andersoncustodio/vim-enter-indent'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'tpope/vim-abolish'
Plug 'yegappan/grep'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/NrrwRgn'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-fugitive'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-eunuch'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'andersoncustodio/vim-emacscommandline'


