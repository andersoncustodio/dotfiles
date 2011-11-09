" {{{ 10 GUI
" guifont
" list of font names to be used in the GUI
if has("mac")
	set gfn=Monaco:h12
elseif has("unix")
	if &guifont == ""
		set gfn=bitstream\ vera\ sans\ mono\ 11
	endif
elseif has("win32")
	set guifont=Consolas:h11,Courier\ New:h10
endif

" guioptions set go=aegimrLtT
" list of flags that specify how the GUI works
set go=o

" linespace
" number of pixel lines to use between characters
set lsp=2

"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=
" }}}

" vim:noet:foldmethod=marker
