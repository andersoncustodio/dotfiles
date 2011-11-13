" {{{ 1 important
" compatible: set (nocp|cp)
" behave very Vi compatible (not advisable)
set nocp

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" runtimepath
" list of directories used for runtime files and plugins
set rtp+=~/.vim,~/.vim/after,~/.vim/pathogen

" Create tmp directorys
if !isdirectory(expand('~/.vim-tmp'))
	call mkdir(expand('~/.vim-tmp/backup'), 'p')
	call mkdir(expand('~/.vim-tmp/swap'), 'p')
	call mkdir(expand('~/.vim-tmp/undo'), 'p')
	call mkdir(expand('~/.vim-tmp/session'), 'p')
endif

" Syntastic settings
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2

" Nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

" Indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" NERD_commenter
let g:NERDSpaceDelims = 1

" PHP
let g:PHP_default_indenting = 0

" Session
let g:session_directory = '~/.vim-tmp/session'
let g:session_autoload = 'no'

" Ctrlp
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = '~/.vim-tmp/ctrlp'
map <silent><leader><C-p> :ClearCtrlPCache<CR>:CtrlP<CR>

if !has('win32')
	set wig+=*/.git/*,*/.hg/*,*/.svn/*
else
	set wig+=.git\*,.hg\*,.svn\* 
endif

" Shell
let g:shell_fullscreen_items = 'm'
map <Leader>fs :Fullscreen<CR>
map <Leader>op :Open<CR>

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Matchpairs
let b:delimitMate_matchpairs = '(:),[:],{:}'

" necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Load pathogen managed plugins
call pathogen#infect()
call pathogen#helptags()

" Enable filetype
filetype on
filetype plugin on
filetype indent on
" }}}

" {{{ 2 moving around, searching and patterns
" whichwrap
" list of flags specifying which commands wrap to another line (local to window)
set ww+=<,>,[,],h,l

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
set list
map <silent> <leader>li :set list!<bar>set nolist?<cr>

" listchars list of strings used for list mode
set lcs=tab:>\ ,trail:-,eol:\|,extends:>,precedes:<

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
set brk=\ \	-+;,/?\&

" showbreak
" string to put before wrapped screen lines
set sbr=...
" }}}

" {{{ 5 syntax, highlighting and spelling
" background "dark" or "light"; the background color brightness
if &term != 'linux' && &term != 'win32'
	set bg=light

	" solarized
	let g:solarized_termcolors=256
	let g:solarized_visibility='low'
	colorscheme solarized
endif

" hlsearch set (nohls|hls)
" highlight all matches for the last used search pattern
set nohls
map <silent> <leader><cr> :set hls!<bar>set nohls?<cr>

" cursorline set (nocul|cul)
" highlight the screen line of the cursor (local to window)
set nocul

" Spell
map <silent> \pt :set spell spelllang=pt<cr>
map <silent> \en :set spell spelllang=en<cr>
map <silent> \ns :set nospell<cr>
" }}}

" {{{ 6 multiple windows
" laststatus: set ls=[0-2]
"
" when to use a status line for the last window
set ls=2

" statusline
" alternate format to be used for a status line
fun! RVM_Status()
	let rvm = exists('g:loaded_rvm')?rvm#string():''
	if  rvm != ''
		return ' RVM(' . rvm . ') '
	else
		return ''
	endif
endf

fun! FugitiveStatus()
	let branch = GitBranch()

	if branch != ''
		return ' GIT(' . GitBranch() . ') '
	else
		return ''
	endif
endf

set stl+=\FILE(%{&ff}\|%{&fenc}\|%Y)
set stl+=\ POS(%l,%c\|%L\|%P)
set stl+=\%{FugitiveStatus()}
set stl+=\%{RVM_Status()}

" hidden: set (nohi|dhid)
" don't unload a buffer when no longer shown in a window
set hid
" }}}

" {{{ 7 multiple tab pages
" tabpagemax: set tpm=([0-9]+)
" maximum number of tab pages to open for -p and "tab all"
set tpm=1000
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
set mousef

" ttymouse "xterm", "xterm2", "dec" or "netterm"; type of mouse
set ttym=xterm2
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
set novb
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
"set fo-=o
set fo=croqln21

" wrapmargin
" margin from the right in which to break a line (local to buffer)
set wm=0

" complete
" specifies how Insert mode completion works for CTRL-N and CTRL-P (local to buffer)
set cpt=.,w,k,b,u,t,i cpt-=k cpt+=k

" completeopt
" whether to use a popup menu for Insert mode completion
set cot=menu,longest,preview

" matchtime: set mat=([0-9]|10)
" tenth of a second to show a match for 'showmatch'
set mat=5

" matchpairs
" list of pairs that match for the "%" command (local to buffer)
" Plugin which enhances this feature: ~/.vim/bundle/matchit
set mps=(:),{:},[:],<:>
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

" {{{ Tab by type
au FileType ruby setl ts=2 sw=2 sts=2
" }}}

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
set nobk

" backupskip
" patterns that specify for which files a backup is not made
" set bsk=~/.tmp/*

" backupdir
" list of directories to put backup files in
set bdir=~/.vim-tmp/backup

" autoread: set (noar|ar)
" automatically read a file when it was modified outside of Vim (global or local to buffer)
set ar
" }}}

" {{{ 20 the swap file
" directory
" list of directories for the swap file
set dir=~/.vim-tmp/swap

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
set wim=longest,list

" wildignore
" list of patterns to ignore files for file name completion
set wig+=*.o,*.o.*,*.a,*.i,*.obj,*.bak,*.exe,.dll,*.com,*.class,*.au,*.djvu,*.pdf,*.chm,*.ttf,*.TTF,*.db,*.dvi,*.aux,*.idx,*.ilg,*.ind,*.log,*.out,*.,*.wav,*.ps,*.avi,*.wmv,*.flv,*.rmvb,*.mov,*.mkv,*.mp4,*.jpg,*.png,*.gif,*.bmp,*.ico,*.xcf,*.psd,*.ai,*.svg,*.svn,.git/*,*.tar,*.gz,*.rar,*.zip,*.iso,*.jar

" command-line completion shows a list of matches
" wildmenu set (nowmnu|wmnu)
set wmnu

" automatically save and restore undo history
" undofile set (noudf|udf)
set udf

" undodir list of directories for undo files
set udir=~/.vim-tmp/undo
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

" {{{ MRU plugin
let MRU_Max_Entries = 400
map <leader>mr :MRU<CR>
" }}}

" {{{ 26 various
" viminfo list that specifies what to write in the viminfo file
set vi='100,<50,s10,h,!

" Don't use Ex mode, use Q for formatting
map Q gq

map Y y$

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" remap the Home key to behave like ^
map <silent> <Home> ^
imap <silent> <Home> <Esc>^i

" trim
map <silent> \tr :%s/\s*$//<CR>
" }}}

" {{{ Tabularize
nmap \a :Tabularize /
vmap \a :Tabularize /
" }}}

" {{{ Jump to last position of buffer when opening
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
" }}}

" {{{ Nerd Tree
nmap <silent> <f2> :NERDTreeToggle<CR>
nmap <silent> <f3> :TagbarToggle<CR>
" }}}

" {{{ Shortcuts for tabs
map \tn :tabnew 
map \tm :tabmove 
map <Tab> gt
map <S-Tab> gT
" }}}

" {{{do not menu with left / right in command line
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>
" }}}

" {{{ Key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}}

" {{{ define :HighlightLongLines command to highlight the offending parts of
" lines that are longer than the specified length (defaulting to 80)
command! -nargs=? HighlightLongLines call s:HighlightLongLines('<args>')
function! s:HighlightLongLines(width)
	let targetWidth = a:width != '' ? a:width : 79
	if targetWidth > 0
		exec 'match Todo /\%>' . (targetWidth) . 'v/'
	else
		echomsg "Usage: HighlightLongLines [natural number]"
	endif
endfunction
map <leader>hl :HighlightLongLines 
" }}}

let g:snipMate = {
	\ 'php': 'php,php-html,html,javascript',
	\ 'ruby': 'ruby-rails,html,javascript',
	\ 'eruby': 'eruby-rails,html,javascript',
	\ }

" vim:noet:foldmethod=marker
