if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
endif

nnoremap <leader>f :Files<space>
