"  1 important
" prepend a Byte Order Mark to the file (local to buffer)
" compatible: set (nocp|cp)
" behave very Vi compatible (not advisable)
set nocp

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" runtimepath
" list of directories used for runtime files and plugins
set rtp+=~/.vim

" Enable filetype
filetype on
filetype plugin on
filetype indent on

" {{{ 2 moving around, searching and patterns
" whichwrap
" list of flags specifying which commands wrap to another line (local to window)
set ww+=<,>,h,l

"startofline: set(nosol|sol)
" many jump commands move the cursor to the first non-blank character of a line
"
"
set nosol

" ignorecase: set (noic|ic)
" ignore case when using a search pattern
set ic

" incsearch set (nois|is)
" show match for partly typed search command
set is

" magic: set (magic|nomagic)
" change the way backslashes are used in search patterns
set magic
" }}}

" {{{ 3 tags
" tags list of file names to search for tags (global or local to buffer)
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" }}}

" {{{ 4 displaying text
" Active syntax
syntax on

" scroll
" number of lines to scroll for CTRL-U and CTRL-D (local to window)
set scr=9

" scrolloff: set so=([0-9]+)
" number of screen lines to show around the cursor
set so=3

" cmdheight: set ch=([0-9]+)
" number of lines used for the command-line
set ch=1

" list: set (nolist|list)
" show <Tab> as ^I and end-of-line as $ (local to window)
set nolist

" listchars list of strings used for list mode
if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
    set lcs=tab:▸\ ,trail:·,eol:¬,extends:»,precedes:«
else
    set lcs=tab:>\ ,trail:-,eol:\|,extends:>,precedes:<
endif

" number: set (nu|nonu)
" show the line number for each line (local to window)
set nu

" wrap: set (wrap|nowrap)
" long lines wrap
set wrap

" sidescroll: set ss=[0-9]+
" minimal number of columns to scroll horizontally
set ss=0

" linebreak: set (nolbr|lbr)
" wrap long lines at a character in 'breakat' (local to window)
set lbr

" breakat
" which characters might cause a line break
"set brk=\ \	-+;,/?\&

" showbreak
" string to put before wrapped screen lines
set sbr=
" }}}

" {{{ 5 syntax, highlighting and spelling
" background "dark" or "light"; the background color brightness
" set background light

" hlsearch set (nohls|hls)
" highlight all matches for the last used search pattern
set nohls

" cursorline set (nocul|cul)
" highlight the screen line of the cursor (local to window)
set nocul

" colorcolumn set cc=[0-9]
" columns to highlight (local to window)
" set cc=79

" Spell
set spellcapcheck=[.?!]\_[\])'"^I ]\+
map <silent> \pt :set spell spelllang=pt<cr>
map <silent> \en :set spell spelllang=en<cr>
map <silent> \ns :set nospell<cr>
" }}}

"  6 multiple windows
" laststatus: set ls=[0-2]
" when to use a status line for the last window
set ls=2

" statusline
" alternate format to be used for a status line
" set stl=

" hidden: set (nohi|dhid)
" don't unload a buffer when no longer shown in a window
set hid

" {{{ 7 multiple tab pages
" tabpagemax: set tpm=([0-9]+)
" maximum number of tab pages to open for -p and "tab all"
set tpm=10

set showtabline=1
" }}}

" {{{ 8 terminal
" term set term=xterm
" name of the used terminal
" set term=xterm
" Colors
set t_Co=256

" ttyfast set (tf|notf)
" terminal connection is fast
set tf

" esckeys set (ek|noek)
" recognize keys that start with <Esc> in Insert mode
set ek
" }}}

" {{{ 9 using the mouse
" mouse
" list of flags for using the mouse
set mouse=a

" mousefocus: set (nomousef|mousef)
" the window with the mouse pointer becomes the current one
set nomousef

" ttymouse "xterm", "xterm2", "dec" or "netterm"; type of mouse
set ttym=xterm2
" }}}


" {{{ 12 messages and info
if has("mac")
    set guifont=Menlo:h14
elseif has("unix") && &gfn == ""
    set guifont=Source\ Code\ Pro\ for\ Powerline
elseif has("win32")
    set guifont=Consolas:h11:cANSI
endif

" guioptions: set go=
" list of flags that specify how the GUI works
set go=c

" linespace: set lsp=[0-9]+
" number of pixel lines to use between characters
set lsp=3

" vim:noet:foldmethod=marker
" }}}

" {{{ 12 messages and info
" showcmd: set (nosc|sc)
" show (partial) command keys in the status line
set sc

" showmode: set (smd|nosmd)
" display the current mode in the status line
set smd

" report
" threshold for reporting number of changed lines
set report=2

" confirm set (nocf|cf)
" start a dialog when a command fails
set cf

" visualbell set (novb|vb)
" use a visual bell instead of beeping
set vb t_vb=

"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=

" set titlestring=%{v:servername}\ -\ %(%{expand(\"%:p:h\")}%)\\%t%(\ %a%)%(\ %M%)
set titlestring=%{v:servername}
" }}}

" {{{ 14 editing text

" textwidth
" line length above which to break a line (local to buffer)
set tw=150

" backspace
" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set bs=indent,eol,start

" formatoptions
" list of flags that tell how automatic formatting works (local to buffe)
set formatoptions+=r " Insert comment leader after hitting <Enter>
set formatoptions+=o " Insert comment leader after hitting o or O in normal mode
set formatoptions+=t " Auto-wrap text using textwidth
set formatoptions+=c " Autowrap comments using textwidth
" set formatoptions+=b " Do not wrap if you modify a line after textwidth; handled by 'l' already?!
set formatoptions+=l " do not wrap lines that have been longer when starting insert mode already
set formatoptions+=q " Allow formatting of comments with "gq".
set formatoptions+=t " Auto-wrap text using textwidth
set formatoptions+=n " Recognize numbered lists
if v:version > 703 || v:version == 703 && has("patch541")
    " Delete comment character when joining commented lines
    set formatoptions+=j
endif

" wrapmargin
" margin from the right in which to break a line (local to buffer)
set wm=0

" complete
" specifies how Insert mode completion works for CTRL-N and CTRL-P (local to buffer)
set cpt=.,w,k,b,u,t,i cpt-=k cpt+=k

" completeopt
" whether to use a popup menu for Insert mode completion
" set cot=menu,longest,preview


" TODO: Talvez remover
" omnifunc
" function for filetype-specific Insert mode completion (local to buffer)
" set omnifunc=syntaxcomplete#Complete
"
" autocmd FileType php setl omnifunc=phpcomplete#CompletePHP
" autocmd FileType phtml setl omnifunc=phpcomplete#CompletePHP
" autocmd FileType python setl omnifunc=pythoncomplete#Complete
" autocmd FileType javascript setl omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html setl omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml setl omnifunc=xmlcomplete#CompleteTags
" autocmd FileType c setl omnifunc=ccomplete#Complete

" matchtime: set mat=([0-9]|10)
" tenth of a second to show a match for 'showmatch'
set mat=5

" matchpairs
" list of pairs that match for the "%" command (local to buffer)
" Plugin which enhances this feature: ~/.vim/bundle/matchit
" set mps=(:),{:},[:],<:>
" }}}

" {{{ 15 tabs and indenting
" tabstop: set ts=([0-9]+)
" number of spaces a <Tab> in the text stands for (local to buffer)
set ts=4

" shiftwidth: set sw=([0-9]+)
" number of spaces used for each step of (auto)indent (local to buffer)
set sw=4

" smarttaba set (nosta|sta)
" <Tab> in an indent inserts 'shiftwidth' spaces
set sta

" softtabstop: set sts=([0-9]+)
" if non-zero, number of spaces to insert for a <Tab> (local to buffer)
set sts=4

" shiftround set (nosr|sr)
" round to 'shiftwidth' for "<<" and ">>"
set sr

" expandtab: set noet et
" expand <Tab> to spaces in Insert mode (local to buffer)
set et

" autoindent: set (noai|ai)
" automatically set the indent of a new line (local to buffer)
set ai

" smartindent: set (nosi|si)
" do clever autoindenting (local to buffer)
set nosi

" cindent: set (nocin|cin)
" enable specific indenting for C code (local to buffer)
set cin

" copyindent: set (noci|ci)
" copy whitespace for indenting from previous line (local to buffer)
set noci

" preserveindent: set (nopi|pi)
" preserve kind of whitespace when changing indent (local to buffer)
set nopi

" {{{ 16 folding: set (fen|nofen)
" foldenable
" set to display all folds open (local to window)
set fen

" foldmarker
" markers used when 'foldmethod' is "marker" (local to window)
set fmr={{{,}}}

" foldmethod
" folding type: "manual", "indent", "expr", "marker" or "syntax" (local to window)
set fdm=manual

" foldnestmax: set fdn=20
" maximum fold depth for when 'foldmethod is "indent" or "syntax" (local to window)
set fdn=3
" }}}

" {{{ 19 reading and writing files
" modeline: set (ml|noml)
" enable using settings from modelines when reading a file (local to buffer)
set noml

" modelines: set mls=[0-9]+
" number of lines to check for modelines
set mls=5


" bomb set (nobomb|bomb)
" prepend a Byte Order Mark to the file (local to buffer)
set nobomb

" fileformat
" end-of-line format: "dos", "unix" or "mac" (local to buffer)
set ff=unix

" fileformats
" list of file formats to look for when editing a file
set ffs=unix,mac,dos

" autowrite: set (noaw|aw)
" automatically write a file when leaving a modified buffer
set noaw

" backup: set (nobk|bk)
" keep a backup after overwriting a file
set bk

" backupskip
" patterns that specify for which files a backup is not made
" set bsk=~/.tmp/*

" backupdir
" list of directories to put backup files in
let backup_path = expand('~/.vim/tmp/backup')
if !isdirectory(backup_path) | call mkdir(backup_path, 'p') | endif
set bdir=~/.vim/tmp/backup

" autoread: set (noar|ar)
" automatically read a file when it was modified outside of Vim (global or local to buffer)
set noar
" }}}

" {{{ 20 the swap file

" directory
" list of directories for the swap file
let swap_path = expand('~/.vim/tmp/swap')
if !isdirectory(swap_path) | call mkdir(swap_path, 'p') | endif
set dir=~/.vim/tmp/swap

" swapfile: set (swf|noswf)
" use a swap file for this buffer (local to buffer)
set swf

" updatecount
" number of characters typed to cause a swap file update
set uc=50

" updatetime
" time in msec after which the swap file will be updated
set ut=4000
" }}}

" {{{ 21 command line editing
" history
" how many command lines are remembered
set hi=1000

" wildmode
" specifies how command line completion works
set wim=list:longest,full

" wildignore
" list of patterns to ignore files for file name completion
set wig+=*.o,*.o.*,*.a,*.i,*.obj,*.bak,*.exe,.dll,*.com,*.class,*.au,*.djvu,*.pdf,*.chm,*.ttf,*.TTF,*.db,*.dvi,*.aux,*.idx,*.ilg,*.ind,*.log,*.out,*.,*.wav,*.ps,*.avi,*.wmv,*.flv,*.rmvb,*.mov,*.mkv,*.mp4,*.jpg,*.png,*.gif,*.bmp,*.ico,*.xcf,*.psd,*.ai,*.svg,*.svn,.git/*,*.tar,*.gz,*.rar,*.zip,*.iso,*.jar

" wildignorecase set (nowic|wic)
" ignore case when completing file names
if exists('&wic') | set wic | endif

" command-line completion shows a list of matches
" wildmenu set (nowmnu|wmnu)
set wmnu

" automatically save and restore undo history
" undofile set (noudf|udf)
if exists('&udf') | set udf | endif

" undodir list of directories for undo files
if exists('&udir')
    let undo_path = expand('~/.vim/tmp/undo')
    if !isdirectory(undo_path) | call mkdir(undo_path, 'p') | endif
    set udir=~/.vim/tmp/undo
endif
" }}}

" {{{ 25 multi-byte characters
" encoding
" character encoding used in Vim: "latin1", "utf-8"
" euc-jp", "big5", etc.
set enc=utf-8

" fileencoding
" character encoding for the current file (local to buffer)
set fenc=utf-8

" fileencodings
" automatically detected character encodings
set fencs=ucs-bom,utf-8,latin1,cp850,default
" }}}

" {{{ 26 various
" viminfo list that specifies what to write in the viminfo file
set vi='100,<50,s10,h,!

" Don't use Ex mode, use Q for formatting
map Q gq

nmap Y y$

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>


" {{{ Jump to last position of buffer when opening
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
" }}}
