if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
endif

let g:fzf_buffers_jump = 1

noremap <silent><cr> :Buffers<cr>

nnoremap <leader>f :Files<cr>
nnoremap <space>f :Files<space>

nnoremap <leader>l :Lines<cr>

nnoremap ; :Commands<cr>
nnoremap <leader>h :History<cr>
