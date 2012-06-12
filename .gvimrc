if has("mac")
	set guifont=Monaco:h12
elseif has("unix") && &gfn == ""
	set guifont=bitstream\ vera\ sans\ mono\ 11
elseif has("win32")
	set guifont=Consolas:h11:cANSI
endif

set guioptions=o
set linespace=2

"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=

set lcs=tab:▸\ ,trail:·,eol:¬,extends:»,precedes:«
set guicursor=n-v-c:block-Cursor,ve:block-Cursor,o:block-Cursor,i-ci:block-Cursor,r-cr:block-Cursor,sm:block-Cursor

" vim:noet:foldmethod=marker
