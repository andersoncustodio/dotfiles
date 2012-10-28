if has("mac")
	set guifont=Menlo:h17
	set transparency=1
elseif has("unix") && &gfn == ""
	set guifont=bitstream\ vera\ sans\ mono\ 11
elseif has("win32")
	set guifont=Consolas:h11:cANSI
endif

set guioptions=e
set linespace=2

"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=

set lcs=tab:▸\ ,trail:·,eol:¬,extends:»,precedes:«

" vim:noet:foldmethod=marker
