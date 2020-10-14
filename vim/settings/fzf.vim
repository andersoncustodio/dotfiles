if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
endif

let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:fzf_buffers_jump = 1

nnoremap <silent><leader>b :Buffers<cr>
nnoremap <silent><leader>f :Files<cr>
nnoremap <space><leader>f :Files <C-R>=substitute(expand('%:p:h') . '/', getcwd() . '/', "", "")<CR>
nnoremap <silent><leader>h :History<cr>
nnoremap <silent><leader>t :Tags<cr>
nnoremap <silent><leader>l :Lines<cr>

nnoremap <silent><leader>: :Commands<cr>
nnoremap <silent>q: :History:<CR>
nnoremap <silent>q/ :History/<CR>
