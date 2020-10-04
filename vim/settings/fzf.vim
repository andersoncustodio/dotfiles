if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
endif

let g:fzf_buffers_jump = 1

noremap <leader>bf :Buffers<cr>

noremap <leader>f :Files<cr>
noremap <space>f :Files<space>

noremap <leader>l :Lines<cr>

noremap <leader>: :Commands<cr>
noremap <leader>h :History<cr>

noremap <leader>t :Tags<cr>
