" Theme
Plug 'dracula/vim', {'as': 'dracula'}

" Syntax
Plug 'juvenn/mustache.vim'
Plug 'chr4/nginx.vim'
Plug 'tpope/vim-markdown'
Plug 'khaveesh/vim-fish-syntax'

" History changes
Plug 'simnalamburt/vim-mundo'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'andersoncustodio/vim-enter-indent'
Plug 'tpope/vim-abolish'
Plug 'chrisbra/NrrwRgn'
Plug 'tomtom/tcomment_vim'
Plug 'moll/vim-bbye'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'airblade/vim-gitgutter'

Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-eunuch'
Plug 'markonm/traces.vim'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
Plug 'KabbAmine/vCoolor.vim'
Plug 'dhruvasagar/vim-zoom'

Plug 'andersoncustodio/vim-sync'
Plug 'prabirshrestha/async.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/tagbar'


" Banco de dados
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/vim-jsx-improve'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'

Plug 'styled-components/vim-styled-components'
Plug 'jparise/vim-graphql'

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" HTML/CSS
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'

" PHP
Plug '2072/PHP-Indenting-for-VIm'
Plug 'captbaritone/better-indent-support-for-php-with-html'

" JSON
Plug 'neoclide/jsonc.vim'
Plug 'elzr/vim-json'

Plug 'Yggdroot/indentLine'
Plug 'pbrisbin/vim-mkdir'
Plug 'ntpeters/vim-better-whitespace'

Plug 'andersoncustodio/vim-emacscommandline'
Plug 'andersoncustodio/vim-cmdline-completion'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'
Plug 'andersoncustodio/vim-snippets'


" Tmux
Plug 'tpope/vim-tbone'


" vdebug settings
let g:vdebug_options = {
    \ "break_on_open": 0
    \ }
Plug 'vim-vdebug/vdebug'

Plug 'mfussenegger/nvim-dap'

